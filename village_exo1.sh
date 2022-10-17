#!/bin/bash

cd /home/ynov
mkdir ./Ynov_campus
mkdir ./Ynov_campus/Mairie
touch ./Ynov_campus/Mairie/Assistant.personnage
mkdir ./Ynov_campus/Mairie/Bureau
touch ./Ynov_campus/Mairie/Bureau/Maire.personnage
echo "Clef du bureau" > ./Ynov_campus/Mairie/Bureau/Maire.personnage
mkdir ./Ynov_campus/Mairie/Archive
touch ./Ynov_campus/Mairie/Archive/registre.objet
echo "habitants: ['Maire', 'Assistant', 'Boulanger', 'Vendeur ]
batiments: ['Mairie', 'Maire_maison', 'Assistant_maison', 'Boulanger_maison', 'Vendeur_maison', 'Boulangerie']" > ./Ynov_campus/Mairie/Archive/registre.objet

m="_maison"
a="Assistant"
b="Boulanger"
o="Boulangerie"
e="Etalage"
c="Chambre-froide"
l="Laboratoire"
b="Boulanger"
v="Vendeur"
w="Maire"

mkdir ./Ynov_campus/Maire_maison
mkdir ./Ynov_campus/${o}
mkdir ./Ynov_campus/Boulanger_maison
mkdir ./Ynov_campus/Vendeur_maison
mkdir ./Ynov_campus/Assistant_maison
mkdir ./Ynov_campus/${o}/${e}
touch ./Ynov_campus/${o}/${e}/Vendeur.personnage
mkdir ./Ynov_campus/${o}/${l}
touch ./Ynov_campus/${o}/${l}/Boulanger.personnage
mkdir ./Ynov_campus/${o}/${c}
touch ./Ynov_campus/${o}/${l}/${b}
touch ./Ynov_campus/${o}/${e}/${v}

touch ./Ynov_campus/${o}/${c}/levure.objet
touch ./Ynov_campus/${o}/${c}/jambon.objet
touch ./Ynov_campus/${o}/${l}/pain.objet
touch ./Ynov_campus/${o}/${l}/pain_jambon.objet

ln -s ./Ynov_campus/${o}/${c} ./Ynov_campus/${o}/${l}
ln -s ../${l}/pain.objet ./Ynov_campus/${o}/${e}
ln -s ../${l}/pain_jambon.objet ./Ynov_campus/${o}/${e}
