An English version of the README is available here: [README_en.md](README_en.md).

# Le parfait boulanger, ou Traité complet sur la fabrication et le commerce du pain

- Auteur: Antoine Augustin Parmentier
- Date de publication: 1778
- Original disponible à https://gallica.bnf.fr/ark:/12148/bpt6k5823829n.texteImage

## But du projet

Obtenir une version numérique facilement lisible du livre ([voir version originale du pdf](le_parfait_boulanger.pdf))

## Etapes du projet

### 1. Nettoyage de chacun des fichiers `pages/*.todo.txt`.

Ce qui est **laissé intact**:
- les retours à la ligne,
- les [césures](https://fr.wikipedia.org/wiki/C%C3%A9sure_(typographie)),
- la conjuguaison de vieux français (ex: "on employoit" pour "on employait").

Ce qui est **remplacé**:
- les [**ſ** ('s' longs)](https://fr.wikipedia.org/wiki/S_long), remplacés par le 's' courant.

Ce qui est **enlevé**:
- les numéros de pages,
- les numéros de chapitres,
- les multiple lignes vides,
- les [caractères de contrôle](https://fr.wikipedia.org/wiki/Caract%C3%A8re_de_contr%C3%B4le) autres que les retours à la ligne et la tabulations.

Une fois toutes les pages nettoyées, il sera facile de modifier automatiquement les pages pour créer une version moderne du texte.

**Renammage:**

Les fichiers restant à nettoyer sont nommés `pages/*.todo.txt`. Une fois nettoyé, le ficher est renommé en `pages/*.done.txt`.

Exemple:

- avant nettoyage: `pages/056_chap_1_page_001.todo.txt`
- après nettoyage: `pages/056_chap_1_page_001.done.txt`

### 2. Assemblage

Assemblage des fichiers `pages/*.done.txt` en 1 fichier par chapitre (`chapitres/1.txt` etc.)

### 3. Génération de fichiers PDF, EPUB etc.

## Status actuel

Le nettoyage du chapitre 0 ("Introduction") est en cours.

## Comment contribuer ?

Pour envoyer des modifications, plusieurs options:
- via git & github: créez un fork du projet et proposez une pull request,
- en créant une "issue" [en utilisant ce template](https://github.com/ybycode/le_parfait_boulanger/issues/new?assignees=&labels=&template=fichier-nettoy-.md&title=Fichier+nettoy%C3%A9%3A+pages%2Fxyz...todo.txt),
- vous pouvez aussi envoyer le contenu modifié d'une page par email à:

    &#101;&#049;&#117;&#105;&#120;&#115;&#049;&#048;&#105;&#032;&#065;&#084;&#032;&#109;&#111;&#122;&#109;&#097;&#105;&#108;&#046;&#099;&#111;&#109;

    Je me chargerai alors d'intégrer ces changements au projet.

## Conventions de nommage des fichiers dans "pages"

Dans le répertoire "pages", les noms de fihiers contiennent, dans l'ordre:

- le numéro de page [du pdf](le_parfait_boulanger.pdf),
- le numéro du chapitre,
- le numéro de page dans le livre,
- le status ("todo" ou "done") indiquant si le fichier reste à nettoyer ou a déjà été traité.

Exemple: `056_chap_1_page_001.todo.txt`:

- page 56 du pdf,
- chapitre 1,
- page 1 de livre,
- n'a pas encore été nettoyé.

## Autres

- [Imagemagick](https://imagemagick.org/) a été utilisé pour la création d'un fichier image PNG pour chaque page du livre:

    ```bash
    $ ./ocr/pdf_to_images.sh
    ```

- [Tesseract](https://github.com/tesseract-ocr/tesseract) a été utilisé pour la reconnaissance des caractères de chacune des pages:

    ```bash
    $ ./ocr/images_to_txt.sh
    ```

## Licence

Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0)

Voir [LICENSE](LICENSE)
