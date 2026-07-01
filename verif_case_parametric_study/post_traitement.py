#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import pandas as pd
import re
import numpy as np
import matplotlib.pyplot as plt
from pathlib import Path


# ============================================================
# LECTURE FICHIER TRIOCFD
# ============================================================

def lire_fichier_triocfd(fichier):
    data = []
    buffer_header = ""
    reading_header = False

    with open(fichier, "r") as f:
        lignes = f.readlines()

    # Recherche de la ligne contenant les noms des bords
    for ligne in lignes:
        if ligne.startswith("# Bord:"):
            header_line = ligne
            break

    # Suppression du "# Bord:"
    header_line = header_line.replace("# Bord:", "").strip()

    # Colonnes
    colonnes = ["Temps"] + header_line.split()

    debut_data = None

    for i, ligne in enumerate(lignes):
        if ligne.startswith("# Temps"):
            debut_data = i + 1
            break

    df = pd.read_csv(
        fichier,
        sep=r"\s+",
        skiprows=debut_data,
        names=colonnes,
        engine="python"
    )

    return df

def lire_fichier_triocfd_C(fichier):

    with open(fichier) as f:
        lignes = f.readlines()

    header_line = lignes[2]

    colonnes = header_line.replace("#", "").split()

    df = pd.read_csv(
        fichier,
        sep=r"\s+",
        comment="#",
        names=colonnes,
        header=None
    )

    return df


# ============================================================
# GROUPES ROBUSTES (regex)
# ============================================================

def build_groups_from_patterns():
    xm = []
    xp = []
   
    for i in [1, 2, 3, 4, 5, 6, 7,8] :
        pattern_xm = rf"_gas_1_xm_{i}_1_"
        pattern_xp = rf"_gas_1_xp_{i}_1_"
        xp.append(pattern_xp)
        xm.append(pattern_xm)
    return xm, xp


# ============================================================
# MOYENNE DERNIER TEMPS
# ============================================================

def moyenne_groupes_dernier_temps(df, groups_xm, groups_xp):
    last_row = df.iloc[-1]

    def moyenne_groupes(groupes):
        valeurs = []
        for groupe in groupes:
            valeurs.append(last_row[groupe])  # scalaire direct
        return np.mean(valeurs)  # moyenne entre zones uniquement
    tm = moyenne_groupes(groups_xm)
    tp = moyenne_groupes(groups_xp)
    return tm, tp, tp-tm

def add_groupes_dernier_temps(df, groups_xm, groups_xp):

    last_row = df.iloc[-1]
    def somme_par_groupes(groupes):
        total = 0.0
        for group in groupes:
            val = last_row[group]  # somme brute de toutes les colonnes du groupe
            total += val
        return total

    somme_xm = somme_par_groupes(groups_xm)
    somme_xp = somme_par_groupes(groups_xp)

    return somme_xm, somme_xp
# ============================================================
# KAPP (flux déjà en W)
# ============================================================

def calcul_kapp(dT, Qtot, Ctot):
    Lx=50.1e-3
    Ly=5e-3

    # formule corrigée (physique correcte)
    Kapp = (Lx * (Qtot + Ctot)) / (2.0 * Ly * dT)

    return Kapp

def compute_results(base_dir, names, myFile):
    T = []
    Ka = []
    qtot = []

    groups_xm, groups_xp = build_groups_from_patterns()

    for name in names:

        file_T = base_dir / name / f"{myFile}_Temperature_rayonnante.out"
        file_F = base_dir / name / f"{myFile}_Flux_radiatif.out"
        file_C = base_dir / name / f"{myFile}_Diffusion_chaleur.out"

        df_T = lire_fichier_triocfd(file_T)
        df_F = lire_fichier_triocfd(file_F)
        df_C = lire_fichier_triocfd_C(file_C)

        Tm, Tp, dT = moyenne_groupes_dernier_temps(df_T, groups_xm, groups_xp)
        Qm, Qp = add_groupes_dernier_temps(df_F, groups_xm, groups_xp)
        Cm, Cp = add_groupes_dernier_temps(df_C, groups_xm, groups_xp)

        Kapp = calcul_kapp(dT, Qp - Qm, Cp - Cm)

        T.append((Tm + Tp) / 2)
        Ka.append(Kapp)
        qtot.append(Qp - Qm)

    return np.array(T), np.array(Ka), np.array(qtot)

# ============================================================
# MAIN
# ============================================================
if __name__ == "__main__":

    from pathlib import Path
    import matplotlib.pyplot as plt

    # ------------------------------------------------------------------
    # Style publication
    # ------------------------------------------------------------------
    plt.rcParams.update({
        "figure.figsize": (7.0, 5.0),
        "figure.dpi": 300,
        "savefig.dpi": 600,

        "font.family": "serif",
        "font.size": 12,
        "axes.labelsize": 14,
        "axes.titlesize": 14,
        "xtick.labelsize": 12,
        "ytick.labelsize": 12,
        "legend.fontsize": 11,

        "axes.linewidth": 1.2,
        "axes.grid": True,
        "grid.linestyle": "--",
        "grid.alpha": 0.25,

        "lines.linewidth": 2.2,
        "lines.markersize": 6,

        "xtick.direction": "in",
        "ytick.direction": "in",
        "xtick.major.size": 6,
        "ytick.major.size": 6,
        "xtick.minor.visible": True,
        "ytick.minor.visible": True,

        "legend.frameon": False,
    })

    colors = [
        "black",
        "#1f77b4",
        "#d62728",
        "#2ca02c",
        "#9467bd",
        "#ff7f0e",
    ]

    markers = [
        "o",
        "s",
        "^",
        "D",
        "v",
        "P",
    ]

    # ------------------------------------------------------------------
    # Données
    # ------------------------------------------------------------------

    current = Path.cwd()

    myFile = "input_triocfd_pb_gas"

    Names = [
        "T=179.2K/",
        "T=375.9K/",
        "T=575.7K/",
        "T=772.4K/",
        "T=972.2K/",
        "T=1574.5K/",
        "T=1974.0K/",
        "T=2370.5K/",
        "T=2770.0K/",
    ]

    cases = {
        "pyMCRad": current / "case_0",
        # "E2T $10^5$": current / "e5",
        # "E2T $10^6$": current / "e6",
        # "E2T $10^6 cor$": current / "e6_corrected",
        # "E2T $10^7$": current / "e7",
    }

    results = {}

    for label, folder in cases.items():

        T, Ka, qtot = compute_results(folder, Names, myFile)

        results[label] = {
            "T": T,
            "Ka": Ka,
            "qtot": qtot
        }

    # ------------------------------------------------------------------
    # Référence
    # ------------------------------------------------------------------

    reference = "pyMCRad"

    Tref = results[reference]["T"]
    Kref = results[reference]["Ka"]

    # ------------------------------------------------------------------
    # Figure
    # ------------------------------------------------------------------

    fig, ax = plt.subplots()

    for i, (label, data) in enumerate(results.items()):

        ax.plot(
            data["T"],
            data["Ka"],
            color=colors[i],
            marker=markers[i],
            markerfacecolor="white",
            markeredgewidth=1.5,
            linewidth=2.2,
            label=label,
        )

    # ------------------------------------------------------------------
    # Axe secondaire
    # ------------------------------------------------------------------

    ax2 = ax.twinx()

    diff_colors = ["#1f77b4", "#d62728", "#2ca02c", "#9467bd","#ff7f0e"]

    j = 0

    for label, data in results.items():

        if label == reference:
            continue

        diff = 100 * (data["Ka"] - Kref) / Kref

        ax2.plot(
            Tref,
            diff,
            "--",
            linewidth=1.,
            color=diff_colors[j],
            label=f"Δ {label}",
        )

        j += 1

    # ------------------------------------------------------------------
    # Labels
    # ------------------------------------------------------------------

    ax.set_xlabel(r"Temperature $T$ (K)")
    ax.set_ylabel(r"Apparent conductivity (W m$^{-1}$ K$^{-1}$)")

    ax2.set_ylabel("Relative difference (%)", color="tab:red")
    ax2.tick_params(axis="y", colors="tab:red")

    ax.minorticks_on()

    # ------------------------------------------------------------------
    # Légende commune
    # ------------------------------------------------------------------

    # Courbes Ka
    lines1, labels1 = ax.get_legend_handles_labels()

    # Courbes de différence relative
    lines2, labels2 = ax2.get_legend_handles_labels()

    # Première légende
    legend1 = ax.legend(
        lines1,
        labels1,
        loc="upper left",
        frameon=False,
    )

    # On conserve la première légende
    ax.add_artist(legend1)

    # Deuxième légende
    ax.legend(
        lines2,
        labels2,
        loc="lower right",
        frameon=False,
    )
    #ax.set_xscale("log")
    #ax.set_yscale("log")
    plt.tight_layout()

    fig.savefig("Ka_vs_T.pdf", bbox_inches="tight")
    #fig.savefig("Ka_vs_T.png", dpi=600, bbox_inches="tight")

    plt.show()