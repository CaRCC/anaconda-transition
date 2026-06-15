Anaconda-Transition White Paper
===============================

This repository holds the source and build tooling for the CaRCC Anaconda Transition Working
Group's white paper documenting changes to Anaconda's Terms of Service from 2024-2025.
The paper is written for researchers, research computing facilitators, and institutional
leadership. A companion FAQ is also included.

TLDR;
-----

### For the Community

The `conda` package manager is free and open-source. It is not going away. The licensing
concerns are specifically about packages hosted in Anaconda Inc.'s "defaults" channel and
their distribution platform. **For most users, the simplest path forward is to use
[conda-forge](https://conda-forge.org/) as your package channel** (e.g., by installing
[Miniforge](https://conda-forge.org/download/) instead of the Anaconda distribution).
Conda-forge is a large, community-maintained collection of packages that does not fall
under Anaconda's Terms of Service. You can continue using `conda` (or `mamba`) exactly
as before, just sourcing packages from conda-forge instead of "defaults."

That said, Anaconda Inc. does provide value beyond just hosting packages. Their curated
"defaults" channel undergoes additional vetting, which may matter for institutions with
stringent security or reproducibility requirements. Organizations in regulated or
high-security environments may find Anaconda's commercial offerings, including verified
package provenance and enterprise support, worth evaluating. For everyone else,
conda-forge covers the vast majority of scientific computing needs at no cost and with
no licensing concerns.

### For Institutional Leadership

Anaconda Inc.'s revised [Terms of Service](https://www.anaconda.com/legal/terms/terms-of-service),
effective July 2025, introduce new compliance obligations for academic institutions.
While Anaconda remains free for accredited educational entities under their
[Academic Policy](https://www.anaconda.com/legal/terms/academic), institutions must now
proactively secure an Eligible Academic Institution (EAI) agreement, renewed annually,
and are held responsible for ensuring all users comply with the terms. Key risk areas
include restrictions on embedding Anaconda packages in containers, mirroring repositories,
and providing access to third parties (e.g., external collaborators), all of which may
require a paid license even under the academic exemption. The terms can be modified with
as little as 90 days' notice, and it falls to the institution to monitor for changes.
Given this evolving landscape, the working group recommends that institutions evaluate
open-source alternatives (such as Miniforge with conda-forge) to reduce compliance
exposure, while engaging with peer institutions through
[CaRCC](https://carcc.org/anaconda-transition-working-group/) to advocate for
clearer, more stable academic terms.


Building
--------

The documents are compiled to PDF outputs from RestructuredText source via LaTeX using the
Sphinx build system. The `docs/` directory contains the source and build system for this.
To build the documents you need to run `make latexpdf` from within `docs/` with suitable
dependencies satisfied (i.e., Sphinx and LaTeX). Assuming you have LaTeX available on your
system, the [uv](https://astral.sh/uv) package manager is a good approach to run the build:

```sh
cd docs
uvx --from sphinx-rtd-theme --with sphinx make latexpdf
```


Releases
--------

These documents are continually built using a GitHub Action that compiles the PDFs.
These assets are attached to each release here in the repo.
These receive their own DOI via the CaRCC Zenodo publishing platform.


Contributing
------------

We're actively encouraging the research community to participate in the refinement and
continual process of improvement and updates to these documents as it's a moving target.
This should be done either as an Issue or Pull Request. Feel free to open
an Issue to raise an item of concern for discussion. To contribute changes (small are large)
to the papers please open a Pull Request from your own fork to the `main` branch.

Once forked, clone your fork locally to make your changes.

```sh
git clone git@github.com:me/anaconda-transition
cd anaconda-transition
```

Make sure you're also able to pull changes from the upstream repository.

```sh
git remote add upstream git@github.com:carcc/anaconda-transition
git fetch --all
```

Commit your changes with a useful commit message.

```sh
git add --all
git commit -m 'Fix description of XYZ'
```

Make sure your branch is up-to-date.

```sh
git pull upstream main
```

If this results in a merge conflict you'll need to resolve those before pushing
to your fork (so-called "origin").

```sh
git push origin main
```

Now you can open a PR by visiting the main repository and selecting your fork.

The `Misc/` directory contains community-contributed scripts, notes, and tips (including
migration helper scripts in `Misc/tools/`) that are provided as-is.

