The Category Theory by Example
==============================

[![Build Status](https://travis-ci.org/CatTheoryByExample/book.svg?branch=master)](https://travis-ci.org/CatTheoryByExample/book)
[![Release (0.0.7)](https://img.shields.io/badge/Latest-release-orange.svg)](https://github.com/CatTheoryByExample/book/releases/download/release-0.0.7/cattheory.pdf)

Content:
The [latest pdf build can be view via nbviewer](https://nbviewer.jupyter.org/github/CatTheoryByExample/book/blob/master/cattheory.pdf)

The most important files:
- Makefile - build scripts
- cattheory.tex - the main latex file with macro and all includes
- cattheory.bib - the bibliography

Build:
- build cattheory.pdf file: make
- cleanup: make clean

Branches:
- master - the main upstream

Note: the builds are not possible now since Travis CI requires payment for it

Previous instruction for build/release is following:
To start release publishing:
- commit and push your changes
- set release tag: for instance git tag release-0.0.123
- push the tags: git push origin release-0.0.123
- check the build progress: https://travis-ci.org/CatTheoryByExample/book/builds
- see a new published release on https://github.com/CatTheoryByExample/book/releases 
