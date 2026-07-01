
name="gas2_1000000"
rm gas2_*
# Copie dans le répertoire courant
cp ../../../embree2trust/build-wo-embree/tests/results/"${name}"* .

for d in T*; do
    [ -d "$d" ] || continue
    f="$d/input_triocfd.data"
    [ -f "$f" ] || continue

    # Copie des fichiers dans le répertoire T*
    cp "${name}"* "$d"/

    echo "Modification de $f"

    sed -i -E "s|^([[:space:]]*fichier_face_rayo[[:space:]]+).*$|\1${name}.facesrayo|" "$f"
    sed -i -E "s|^([[:space:]]*fichier_fij[[:space:]]+).*$|\1${name}.factforme|" "$f"
done
