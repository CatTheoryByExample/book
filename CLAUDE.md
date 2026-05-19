# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a LaTeX book project titled "Category Theory by Example" by Ivan Murashko, Alexey Radkov, and Marat Minshin. The book covers category theory concepts with practical examples, including topics on Haskell and quantum mechanics.

## Build Commands

### Building the PDF
```bash
make
```

This command runs the complete LaTeX build pipeline:
- Compiles with `pdflatex` using `-shell-escape` flag (required for minted package)
- Processes bibliography with `bibtex`
- Generates nomenclature index with `makeindex`
- Runs `pdflatex` three times to resolve all cross-references

### Cleaning Build Artifacts
```bash
make clean
```

Removes all auxiliary files including:
- LaTeX auxiliary files (`.aux`, `.toc`, `.out`, `.idx`, `.nlo`, `.nls`)
- Bibliography files (`.bbl`, `.blg`)
- Log files (`.log`, `.ind`, `.ilg`)
- Minted cache directories (`_minted-*`)
- Backup files (`*~`)

## Project Structure

### Main Files
- `cattheory.tex` - Main LaTeX document that includes all chapters and defines custom macros, theorem environments, and document structure
- `cattheory.bib` - Bibliography database with references
- `Makefile` - Build automation scripts

### Chapter Files (included in order)
1. `notations.tex` - Mathematical notation conventions
2. `introduction.tex` - Book introduction
3. `basedefinitions.tex` - Basic category theory definitions
4. `objectsmorphisms.tex` - Objects and morphisms
5. `curryhoward.tex` - Curry-Howard correspondence
6. `functors.tex` - Functor theory
7. `nt.tex` - Natural transformations
8. `monads.tex` - Monad theory
9. `kleisli.tex` - Kleisli categories
10. `limits.tex` - Limits and colimits
11. `yoneda.tex` - Yoneda lemma
12. `topos.tex` - Topos theory
13. `appendices.tex` - Additional appendices
14. `license.tex` - License information

Note: `monoidalobject.tex` exists but is currently commented out in the main file.

## LaTeX Architecture

### Custom Environments
The project defines several custom theorem-like environments with automatic indexing:
- `theorem` - Main theorems
- `definition` - Definitions
- `example` - Examples
- `lemma` - Lemmas
- `remark` - Remarks
- `property` - Properties
- `axiom` - Axioms

These environments support optional arguments and automatically add entries to the index.

### Custom Macros
Key category theory macros defined in `cattheory.tex`:
- `\cat{}` - Bold category names
- `\catob{}` - Objects of a category
- `\cathom{}` - Hom-sets of a category
- `\catmset[C]{A}{B}` - Hom-set from A to B in category C
- `\catcovhom{}{}` - Covariant Hom functor
- `\catconhom{}{}` - Contravariant Hom functor
- `\funcat{}{}` - Functor category
- `\mynameref{}` - Custom reference command with automatic indexing
- `\tof` - Functor arrow (⇒)
- `\tont` - Natural transformation arrow

### Required LaTeX Packages
Critical dependencies:
- `minted` - Code syntax highlighting (requires `-shell-escape` flag and `python-pygments`)
- `tikz-cd` - Commutative diagrams
- `hyperref` - PDF hyperlinks and navigation
- `nomencl` - Nomenclature/notation list
- Various math packages: `amsmath`, `amsthm`, `amssymb`, `mathtools`

## Git Workflow

### Releases (Historical - Travis CI No Longer Active)
The project previously used Travis CI for automated builds and releases:
1. Commit and push changes
2. Create release tag: `git tag release-0.0.X`
3. Push tags: `git push origin release-0.0.X`
4. Travis CI would build PDF and publish to GitHub releases

Note: Travis CI builds are currently disabled due to payment requirements.

## Editing Guidelines

### Adding New Content
- New chapters should be created as separate `.tex` files
- Include new chapter files in `cattheory.tex` using `\input ./filename.tex`
- Use defined custom environments rather than raw LaTeX theorem environments
- Add optional labels to theorems, definitions, etc. for automatic indexing

### References
- Use `\mynameref{label}` instead of `\nameref` for automatic index generation
- Label prefixes: `def:` (definitions), `lem:` (lemmas), `thm:` (theorems), `rem:` (remarks), `ex:` (examples), `prop:` (properties), `axm:` (axioms)

### Commutative Diagrams
- Use `tikz-cd` package for category theory diagrams
- Custom TikZ styles are defined for directed arrows in commutative diagrams

## Review Workflow

When asked to review changes, use the `review-changes` skill. It specifies
which review subagent(s) to use; the main agent must triage returned findings
and decide whether to apply them.
