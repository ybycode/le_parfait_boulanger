# Le parfait boulanger, ou Traité complet sur la fabrication et le commerce du pain

- Auteur: Antoine Augustin Parmentier
- Date de publication: 1778
- Disponible à https://gallica.bnf.fr/ark:/12148/bpt6k5823829n.texteImage

## But du projet

Ce projet a pour but d'obtenir une version numérique facilement lisible du livre.

## Outils

- [Imagemagick](https://imagemagick.org/) est utilisé pour la création d'un fichier image PNG pour chaque page du livre:

    ```bash
    $ ./ocr/pdf_to_images.sh
    ```

- [Tesseract](https://github.com/tesseract-ocr/tesseract) a été utilisé pour la reconnaissance des caractères de chacune des pages:

    ```bash
    $ ./ocr/images_to_txt.sh
    ```
Les fichiers PNG et TXT sont disponibles dans le dossier `pages`.

