An English version of the README is available here: [README_en.md](README_en.md).

# Le parfait boulanger, ou Traité complet sur la fabrication et le commerce du pain

- Auteur: Antoine Augustin Parmentier
- Date de publication: 1778
- Original disponible à https://gallica.bnf.fr/ark:/12148/bpt6k5823829n.texteImage

## But du projet

Obtenir une version numérique facilement lisible du livre.

## Etapes du projet

1. Nettoyage de chacun des fichiers `pages/*.todo.txt`. Une fois nettoyé, le ficher est renommé en `pages/*.done.txt`.
Durant cette phase, le formattage est laissé intact, incluant les [césures](https://fr.wikipedia.org/wiki/C%C3%A9sure_(typographie)).
2. Assemblage des fichiers `pages/*.done.txt` en 1 fichier par chapitre (`chapitres/1.txt` etc.)
3. Génération de fichiers PDF, EPUB etc.

## Status actuel

Le nettoyage du chapitre 0 ("Introduction") est en cours.

## Comment contribuer ?

Les pull requests sont les bienvenues ! Une PR par page est préféré

## Conventions de nommage

- les fichiers nommés `pages/*.todo.txt` (à faire) restent à traiter,
- les fichiers nommés `pages/*.done.txt` (faits) sont considérés comme traités.


## Autres

- [Imagemagick](https://imagemagick.org/) a été utilisé pour la création d'un fichier image PNG pour chaque page du livre:

    ```bash
    $ ./ocr/pdf_to_images.sh
    ```

- [Tesseract](https://github.com/tesseract-ocr/tesseract) a été utilisé pour la reconnaissance des caractères de chacune des pages:

    ```bash
    $ ./ocr/images_to_txt.sh
    ```
