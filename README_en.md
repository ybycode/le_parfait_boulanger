# Le parfait boulanger, ou Traité complet sur la fabrication et le commerce du pain

- Author: Antoine Augustin Parmentier
- Published on: 1778
- Orignal available at https://gallica.bnf.fr/ark:/12148/bpt6k5823829n.texteImage

## Project goal

Build a digitized and easy to read version of the book ([see original PDF version](le_parfait_boulanger.pdf))

## Project steps

### 1. Cleanup of each of the files in `pages/*.todo.txt`.

What's left **as is**:
- new lines,
- [line breaks](https://en.wikipedia.org/wiki/Line_wrap_and_word_wrap),
- conjugation of old french (ex: "on employoit" for "on employait").

What's **replaced**:
- the [**ſ** (long 's')](https://en.wikipedia.org/wiki/Long_s), replaced by the current 's'.

What's **removed**:
- page numbers,
- chapter numbers,
- multiple empty lines,
- the [control characters](https://en.wikipedia.org/wiki/Control_character) other than new lines and tabulations.

Once all pages are cleaned up, it'll be easy to create and automatically modify pages to create modern versions of the text.

**Renaming:**

Files yet to be cleaned up are named `pages/*.done.txt`. Once cleaned up, the file is renamed to match the format `pages/*.done.txt`.

Exemple:

- before cleanup: `pages/056_chap_1_page_001.todo.txt`
- after cleanup: `pages/056_chap_1_page_001.done.txt`


### 2. Assembly

Assembly of page files (`pages/*.done.txt`) into 1 file per chapter (`chapitres/1.txt` etc.)

### 3. Generation of PDF, EPUB files etc.

## Current status

The cleanup of the chapter 0 ("Introduction") is ongoing.

## How to contribute?

To send modifications, several options:
- via git & github: create a fork of this project and propose a pull request,
- by creating an issue [using this template](https://github.com/ybycode/le_parfait_boulanger/issues/new?assignees=&labels=&template=fichier-nettoy-.md&title=Fichier+nettoy%C3%A9%3A+pages%2Fxyz...todo.txt),
- you can also send the modified content of a page by email to:

    &#101;&#049;&#117;&#105;&#120;&#115;&#049;&#048;&#105;&#032;&#065;&#084;&#032;&#109;&#111;&#122;&#109;&#097;&#105;&#108;&#046;&#099;&#111;&#109;

    I'll then take care of integrating those changes in the project.

## Naming conventions of files in "pages"

In the "pages" directory, filenames are made of the different information, in this order:
- the [pdf file](le_parfait_boulanger.pdf) page number ,
- the chapter number,
- the page number in the book,
- the status ("todo", "done") indicating if the file is yet to be cleaned up or not.

Example: `056_chap_1_page_001.todo.txt`:

- page 56 in the pdf,
- chapter 1,
- page 1 in the book,
- hasn't been cleaned up yet.

## Misc

- [Imagemagick](https://imagemagick.org/) was used for the creation of one PNG image per PDF page:

    ```bash
    $ ./ocr/pdf_to_images.sh
    ```

- [Tesseract](https://github.com/tesseract-ocr/tesseract) was used for the optical characters recognition (OCR) of each of the pages:

    ```bash
    $ ./ocr/images_to_txt.sh
    ```

## License

Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0)

See [LICENSE](LICENSE)
