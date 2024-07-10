# GitHub action org files to HTML

This repository contains a small GitHub action that automatically converts emacs org-mode files to
HTML files, and publish it as a GitHub page.

## Configuration

You can find the script in [main.yml](main.yml). Using it requires you to configurate the
[init.el](init.el) file by loading the modes that you wish to have to render the file. It supports
syntactic coloring.

Then, you can choose whether you write up an `index.html` file (it is, however, recommended) and a
custom stylesheet. If you don't have either of those, do not forget to comment the pertinent lines
in [main.yml](main.yml).

Afterwards, you can configurate in Settings > Pages the build and deployment step as `GitHub
Actions`, and it should run smoothly.

## Example

An example is available in [this repository](https://github.com/jrosain/Homotopy-Finiteness). The
rendered website can be browsed [here](https://jrosain.github.io/Homotopy-Finiteness/).
