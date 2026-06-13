# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'CaRCC Anaconda transtion'
copyright = '2025, CaRCC Anaconda transtion working group'
author = 'CaRCC Anaconda transtion working group'
author_tex = '{CaRCC} {A}naconda {T}ranstion {W}orking {G}roup'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = []

templates_path = ['_templates']
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']



# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

#html_theme = 'alabaster'
html_theme = "sphinx_rtd_theme"
html_static_path = ['_static']



# -- Options for LaTeX output ------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-latex-output

latex_theme = 'howto'
latex_show_urls = 'footnote'
latex_elements = {
    # See https://www.sphinx-doc.org/en/master/latex.html#module-latex
    # for more tweaks that could be put here.
    'papersize': 'letterpaper',
    'pointsize': '11pt',
}

# Build the white paper as a single, standalone PDF using the 'howto'
# (article) document class. This avoids the book-style title page, blank
# verso pages, and "CONTENTS:" running headers produced by the 'manual'
# class, and keeps the FAQ as a separate document (not bundled in).
pdf_title_tex = 'Addressing the Challenges Posed by {A}naconda’s New Licensing Model'
latex_documents = [
    # ('source_file', 'target_tex_file', 'Document Title', 'Author', 'Document Class', [toctree_only]),
    ('WhitePaper/White-paper-to-community',
     'carcc-anaconda_transtion.tex',
     pdf_title_tex, author_tex, 'howto'),
]
