# Le parfait boulanger, ou Traité complet sur la fabrication et le commerce du pain

- Author: Antoine Augustin Parmentier
- Published on: 1778
- Orignal available at https://gallica.bnf.fr/ark:/12148/bpt6k5823829n.texteImage

## Project's goal

Build a digitized and easy to read version of the book.

## Project steps

1. Cleanup of each of the files in `pages/*.todo.txt`. Once cleaned up, the file is renamed to match the format `pages/*.done.txt`.
During this phase, formatting of each page is kept as is, including [line beaking](https://en.wikipedia.org/wiki/Line_wrap_and_word_wrap).
2. Assembly of page fles (`pages/*.done.txt`) into 1 file per chapter (`chapitres/1.txt` etc.)
3. Generation of PDF, EPUB files etc.

## Current status

The cleanup of the chapter 0 ("Introduction") is ongoing.

## How to contribute?

Pull requests are welcome! One PR per page is preferred.

## Naming conventions

- files named `pages/*.todo.txt` are yet to be treated.
- files named `pages/*.done.txt` are considered as done.

## Misc

- [Imagemagick](https://imagemagick.org/) was used for the creation of one PNG image per PDF page:

    ```bash
    $ ./ocr/pdf_to_images.sh
    ```

- [Tesseract](https://github.com/tesseract-ocr/tesseract) was used for the optical characters recognition (OCR) of each of the pages:

    ```bash
    $ ./ocr/images_to_txt.sh
    ```
