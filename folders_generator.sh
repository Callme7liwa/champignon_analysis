#!/bin/bash

# Nom du projet
PROJECT_NAME="projet_champignons"

# Création du dossier principal
mkdir -p $PROJECT_NAME

# Se déplacer dans le dossier du projet
cd $PROJECT_NAME

# Création de la structure des dossiers
mkdir -p data/{raw/{classe1,classe2,classe3},processed}
mkdir -p notebooks
mkdir -p models
mkdir -p src

# Création des fichiers Python dans src
touch src/__init__.py
touch src/data_preparation.py
touch src/model.py

# Création des fichiers à la racine du projet
touch requirements.txt
touch README.md

# Création du notebook Jupyter
touch notebooks/train_model.ipynb

# Ajout de contenu de base dans le README.md
echo "# Projet de Classification de Champignons

## Structure du projet

- data/ : Dossier contenant les données
  - raw/ : Images brutes
  - processed/ : Images prétraitées
- notebooks/ : Notebooks Jupyter
- models/ : Modèles entraînés
- src/ : Code source
- requirements.txt : Dépendances du projet

## Installation

\`\`\`bash
pip install -r requirements.txt
\`\`\`" > README.md

# Affichage de la structure créée
echo "Structure du projet créée avec succès!"
tree $PROJECT_NAME