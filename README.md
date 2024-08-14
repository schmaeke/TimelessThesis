# L<sup>A</sup>T<sub>E</sub>X Thesis

<p align = "center">
    <img src = "screenshots/page_0.jpg" width = "30%"/><br>
</p>

This repository provides a document class ```thesis.cls``` alongside an example ```master.tex``` for typesetting a academic thesis in L<sup>A</sup>T<sub>E</sub>X.
The provided example is made for students at the [*Hochschule Düsseldorf*](https://www.hs-duesseldorf.de/). Nevertheless, changing the university logo and name is pretty straight forward.

## Building the document
Building the document is easy, first you need a ```tex``` installation, on macOS this can be done using [```homebrew```](https://brew.sh)
```sh
brew install texlive
```
This also comes with [```latexmk```](https://www.cantab.net/users/johncollins/latexmk/) which lets us build the document with
```sh
latexmk -pdf
```
This will automatically compile every file with a ```.tex``` ending in the current directory.
If you have a lot of ```TikZ``` graphics in you thesis, resulting in long compile times, you should enable the externalize feature from tikz.
Just create an empty directory ```figures``` next to you ```master.tex``` and add ```\tikzexternalize[prefix = figures/]``` to your preamble.
Following that, you also have to add the ```-shell-escape``` flag to ```latexmk``` in order for the document to properly compile.
