#!/bin/bash

for d in T*/; do
    echo ">>> Nettoyage dans $d"
    (
        cd "$d" && trust -clean
    )
done
