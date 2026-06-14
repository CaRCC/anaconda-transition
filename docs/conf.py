# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'CaRCC Anaconda Transition'
copyright = '2026, CaRCC Anaconda Transition working group'
author = 'CaRCC Anaconda Transition working group'
author_tex = '{CaRCC} {A}naconda {T}ransition {W}orking {G}roup'

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

# Subtitle rendered directly beneath the main title. We patch \title at
# begin-document so the subtitle is appended to whatever Sphinx set as the
# document title, then let Sphinx's normal title machinery typeset it.
# str.replace (not %-formatting) is used to avoid clashing with LaTeX '%'.
subtitle_tex = (
    r'A White Paper for Researchers, Research Computing Facilitators, '
    r'and Institutional Leadership'
)
latex_title_preamble = r'''
\makeatletter
\AtBeginDocument{%
  \let\atwg@title\@title
  \renewcommand{\@title}{\atwg@title\\[0.8ex]{\Large\mdseries __SUBTITLE__}}%
  % Drop the automatic \today date shown under the title; the publication
  % date is carried by the :Date: metadata field instead.
  \renewcommand{\@date}{}%
  % Render the table of contents more compactly (smaller font + tighter
  % leading between entries) so the title block, ToC, and the
  % Authors/Version/Date metadata all fit on page 1.
  \let\atwg@toc\sphinxtableofcontents
  \renewcommand{\sphinxtableofcontents}{%
    \begingroup
      \small
      \setlength{\parskip}{0pt}%
      \renewcommand{\baselinestretch}{0.9}\selectfont
      \atwg@toc
    \endgroup
  }%
}
\makeatother
'''.replace('__SUBTITLE__', subtitle_tex)

latex_elements = {
    # See https://www.sphinx-doc.org/en/master/latex.html#module-latex
    # for more tweaks that could be put here.
    'papersize': 'letterpaper',
    'pointsize': '11pt',
    # Append the subtitle to the title, and limit the table of contents to
    # top-level sections only (tocdepth 1; subsections start at level 2) so
    # it stays compact enough to share page 1 with the author/version/date
    # block.
    'preamble': r'\setcounter{tocdepth}{1}' + latex_title_preamble,
}

# Build the white paper as a single, standalone PDF using the 'howto'
# (article) document class. This avoids the book-style title page, blank
# verso pages, and "CONTENTS:" running headers produced by the 'manual'
# class, and keeps the FAQ as a separate document (not bundled in).
pdf_title_tex = 'Addressing the Challenges Posed by {A}naconda’s New Licensing Model'
latex_documents = [
    # ('source_file', 'target_tex_file', 'Document Title', 'Author', 'Document Class', [toctree_only]),
    ('WhitePaper/White-paper-to-community',
     'carcc-anaconda-transition.tex',
     pdf_title_tex, author_tex, 'howto'),
]
