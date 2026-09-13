# Allameh Tabataba'i University Thesis Template - Economics Faculty Edition

![LaTeX](https://img.shields.io/badge/LaTeX-47A141?style=for-the-badge&logo=latex&logoColor=white)
![XeTeX](https://img.shields.io/badge/XeTeX-122B42?style=for-the-badge&logo=latex&logoColor=white)
![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge)
![Open Source](https://img.shields.io/badge/Open_Source-Yes-brightgreen?style=for-the-badge)

## Introduction

Welcome to the **heavily debugged, mathematically optimized, and binding-ready LaTeX template** tailored specifically for the **Economics Faculty at Allameh Tabataba'i University (ATU)**.

This repository provides an absolute gold standard for ATU students. It significantly overhauls the legacy `allameh-thesis.cls` file, resolving long-standing bugs and ensuring a smooth, crash-free compilation experience for both Master's and Ph.D. students.

## Key Features

*   **Smart MSc/PhD Toggle:** Use `\documentclass[msc]{allameh-thesis}` to dynamically switch the title page and defense form between Master's and Ph.D. formats.
*   **Legacy Bug Fixes:** Fixed critical legacy class bugs, including `\@verridelabel` and external referee compilation crashes. Implemented critical safe-checks (`\ifx...\undefined`) for defense committee variables.
*   **Math Optimization:** Proper math environments for negative/decimal numbers (utilizing XB Niloofar digit font to prevent missing decimal/percentage errors).
*   **Binding-Ready Margins:** Pre-configured margins (Right: 4cm, Left: 2.5cm) perfectly optimized for physical binding and spine (شیرازه).

## Prerequisites

To compile this template, you must have the following installed:

*   **TeX Distribution:** TeX Live (recommended) or MiKTeX.
*   **Packages:** Ensure the `xepersian` package is installed.
*   **Compilation Engine:** The compilation engine **MUST** be **XeLaTeX**.

## Quick Start Guide

Follow these steps to get your thesis up and running:

1.  **Clone the Repository:**
    ```bash
    git clone https://github.com/your-username/atu-economics-thesis.git
    cd atu-economics-thesis
    ```
    *(Replace with actual repository URL once published)*

2.  **Fill in Personal Details:**
    *   Open `fainfo.tex` and fill in your Persian details (title, name, supervisors, referees, etc.).
    *   Open `eninfo.tex` and fill in your English details.
    *   **⚠️ IMPORTANT:** Do NOT delete placeholder variables or commented-out referee/supervisor lines (e.g., `\firstexternalreferee`). They are required for dynamic table generation. If a field doesn't apply (like an external referee for a Master's student), leave it as `--` or follow the comments in the file.

3.  **Write Your Content:**
    Add your text to `chapter1.tex`, `chapter2.tex`, etc.

4.  **Compile:**
    Compile the main file using XeLaTeX:
    ```bash
    xelatex thesis.tex
    ```
    *(Note: You may need to compile multiple times (e.g., `xelatex -> bibtex -> xelatex -> xelatex`) to generate correct bibliography and table of contents).*

## Repository Structure

```text
├── allameh-thesis.cls    # The core LaTeX class file (heavily modified & debugged)
├── thesis.tex            # Main LaTeX file to compile
├── fainfo.tex            # Persian thesis information (name, title, committee)
├── eninfo.tex            # English thesis information
├── faabstract.tex        # Persian abstract
├── chapter1-6.tex        # Chapter files
├── appendix1.tex         # Appendix file
├── symbols.tex           # List of symbols
├── dicfa2en.tex          # Persian to English dictionary
├── dicen2fa.tex          # English to Persian dictionary
├── MyReferences.bib      # Bibliography file (BibTeX)
├── figures/              # Directory for images and ATU logo
├── LICENSE               # MIT License file
└── README.md             # This file
```

## Author & Credits

This template overhaul, legacy bug squashing, and math optimization were heavily developed and credited to **Amirhossein Ebrahimikhorramabadi** (2026).

## Contributing & Issues

Found a bug? Want to add a feature?
Students and contributors are highly encouraged to open an issue or submit a pull request! Let's keep this template the gold standard for all ATU Economics students.