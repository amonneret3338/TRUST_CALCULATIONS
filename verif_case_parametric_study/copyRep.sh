#!/bin/bash

# Supprime tous les répertoires TA*
find . -maxdepth 1 -type d -name 'T*' -exec rm -rf {} +

# Copie tous les répertoires T=* depuis le répertoire parent
cp -r ../T=*/ .
