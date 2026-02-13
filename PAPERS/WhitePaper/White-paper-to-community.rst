******************************************************************
Addressing the Challenges Posed by Anaconda's New Licensing Model
******************************************************************

White paper to researchers, research computing facilitators, and institutional leadership
==========================================================================================

:Authors:
 Anna Alber,\ :sup:`1`
 Joseph Creech,\ :sup:`2`
 Raffaella D'Auria,\ :sup:`3`
 Lev Gorenstein,\ :sup:`4`
 Manasvita Joshi,\ :sup:`5`
 Ian Kaufman,\ :sup:`6`
 Geoffrey Lentner,\ :sup:`7`
 Bryan Raney,\ :sup:`8`
 Aldo Romero,\ :sup:`9`
 William Warriner\ :sup:`10`

 :sup:`1` Chapman University;
 :sup:`2` George Washington University;
 :sup:`3` OARC/IDRE - University of California, Los Angeles;
 :sup:`4` Globus - University of Chicago;
 :sup:`5` Harvard University;
 :sup:`6` University of California, San Diego;
 :sup:`7` Purdue University;
 :sup:`8` Rice University;
 :sup:`9` West Virginia University;
 :sup:`10` University of Alabama at Birmingham.

:Version: 1.0
:Date: 2026-01-XX

.. attention:: NB to change actual date


Executive Summary
-----------------

`Anaconda Inc. <https://www.anaconda.com/>`__ revised its Terms of
Service (ToS) in the `Spring of 2024
<https://web.archive.org/web/20240808124157/https://legal.anaconda.com/policies/en/>`__
that poses potential risks to our university's research
infrastructure. Anaconda's Python distribution and package-management
platform has long been available at no cost for academic use - locally
and on HPC clusters – underpinning the majority of scientific
workflows across multiple departments. The current restrictions and
license-fee requirements introduces significant financial burdens,
disrupt established computational environments, and undermine
collaborative projects – from individual lab pipelines to cross-campus
consortium efforts.

At a Campus Research Computing Consortium (CaRCC) meeting in Fall 2024
(?), representatives from national laboratories, DoE facilities, and
peer institutions underscored shared concerns regarding these
revisions, such as, which institutions (and which categories of users
– scholarly vs. research, on-campus vs. external collaborators) would
qualify for a free or reduced-fee academic tier, or how would
individual researchers submit proof of affiliation, or can the
university secure a blanket exemption, or how will site-wide
installations on shared systems be licensed, particularly when NSF- or
DoE-funded collaborators without formal university appointments also
require access.

At the time, Anaconda's team was drafting a standalone academic policy
and had invited institutions to coordinate use-case details and a
rollout timeline. The negotiation window has now closed. Moving
forward, we will need to adapt to the finalized terms while exploring
institutional solutions to ensure continued, cost-effective access to
the Anaconda ecosystem, preserve the integrity of our teaching labs
and research clusters, and sustain our science leadership.


Introduction
------------

Anaconda has long been a cornerstone of scientific and academic
computing, offering a robust package management system and an
ecosystem that simplifies the installation and maintenance of numerous
open-source libraries. It is one of the most popular methods of
automatically installing packages and interfacing with AI and other
package-based technologies. However, in early 2024, Anaconda
Inc. updated its `ToS <https://legal.anaconda.com/policies/en/>`__ to
imply that it would no longer support free access to their base
distribution or their *defaults* channel for non-commercial academic
research institutions with more than 200 employees. The `reason
<https://www.anaconda.com/pricing/terms-of-service-faqs>`__ for
updating their ToS was to offset the significant costs associated with
maintaining and hosting their platform and services. But, this update
caused tremendous confusion and anxiety across academic communities
that have historically relied upon Anaconda for their academic and
research work.

In September 2024, a few months after the widespread enforcement of
these changes began, a `blog post
<https://www.anaconda.com/blog/update-on-anacondas-terms-of-service-for-academia-and-research>`__
was published to clarify the intent of the update to the
community. This blog post seemed to suggest that Anaconda would remain
free for researchers at accredited universities though universities
cannot mirror Anaconda servers without a license, and that a revised
update is forthcoming by the year-end. The Community Repository on
`anaconda.org <https://anaconda.org>`__ is free to use for installing
and updating packages from community channels like conda-forge, but
certain mirrored channels (main, r, msys2, anaconda) remain subject to
`Anaconda’s Terms of Service
<https://www.anaconda.com/legal/terms/terms-of-service>`__. The
Anaconda Repository at `repo.anaconda.com
<https://repo.anaconda.com/>`__ is also free for individuals,
universities, and companies with fewer than 200 employees, but larger
non-academic organizations, including research institutions and
national labs, must obtain a license to use it. However, the academic
community continued to stay concerned, as blog posts are not legally
binding (unlike a ToS), which led to the creation of `Anaconda
Transition Working Group
<https://carcc.org/anaconda-transition-working-group/>`__ (ATWG).

ATWG comes under the umbrella of the nationwide Campus Research
Computing Consortium (`CaRCC <https://carcc.org/>`__). It was formed
to help the research computing and data (RCD) community ensure
compliance with the changes proposed by Anaconda Inc., evaluate
potential complications arising from the update, and to come up with
alternatives for package management that could be used as possible
workarounds. Since its inception in October 2024, ATWG has been
meeting weekly to discuss the implications of Anaconda Inc's revised
ToS and how to best communicate that to the academic community. To
that end, the group has met with the Anaconda Inc. a few times, in
December 2024, February 2025, and July 2025, to gain clarity on their
ToS, ensure compliance in the face of the changes proposed by Anaconda
Inc., and obtain updates on the ToS as pertaining to the academic
community. The goals of the meetings included, but were not limited
to:

-  obtaining clarity on the `update to the
   ToS <https://legal.anaconda.com/policies/en/>`__
-  the current status of proposed changes
-  implications of the change on the larger community
-  thoughts and suggestions on how to proceed
-  specific compliance details for various types of institutions

Before proceeding further, it is important to make the distinction between
several terms used here. Anaconda, as a term, could refer to the
company, a package distribution channel, or a package management
software distribution, depending on the context. It could, sometimes,
also be used to refer to the environment management software "conda". On
the other hand, `Anaconda, Inc. <https://www.anaconda.com/>`__, strictly
refers to the privately owned, for-profit company responsible for the
well-known ecosystem for managing scientific software packages. Finally,
Anaconda distribution refers to the software bundle containing "conda",
Anaconda Navigator (desktop application with graphical interface for
managing packages, channels, and environments within the Anaconda,
Inc. ecosystem), a pre-configured "base" environment, and pre-configured
package distribution channels.

According to the updated ToS, downloading the distribution is covered
by the ToS. However, the Anaconda channel that is maintained by the
company is subject to ToS. Additionally, "conda" and its `repository
<https://github.com/conda/conda>`__ is a Free and Open-Source Software
(FOSS) with Berkley Source Distribution (`BSD
<https://www.techtarget.com/whatis/definition/BSD-licenses#:~:text=As%20a%20low%20restriction%20and,was%20first%20written%20in%201969.>`__)
license that is widely used in the Anaconda Distribution, Miniconda,
and Miniforge installers. At the time, the primary issues associated
with these change(s) included, but were not limited to:

-  Licensing Costs: Institutions with more than 200 employees must now
   pay for a commercial license to use Anaconda.
-  Compliance: Institutions are receiving notices from Anaconda about
   non-compliance with the new ToS. See `Anaconda puts the squeeze on
   data scientists • The
   Register <https://www.theregister.com/2024/08/08/anaconda_puts_the_squeeze_on/>`__.
-  Heavy Dependence: Academic institutions contribute significantly to
   open-source software used within Anaconda. Based on the above, any
   institution with more than 200 employees will now be required to pay
   for access.
-  Budget Constraints: Many institutions and researchers operate under
   tight budgets, even more so now than ever, that do not account for
   unexpected licensing costs.
-  Operational Challenges: The sudden implementation of these changes
   has disrupted workflows, requiring rapid reassessment of how
   institutions and research computing teams should manage software
   environments.

To address these challenges, ATWG had initiated several actions:

-  Communication with Anaconda Inc.: As noted above, we had three
   meetings with Anaconda Inc. leadership and representatives, in
   addition to a few exchanges over email. The main goals of those
   meetings were to understand their licensing model better and to
   advocate for equitable treatment of academic institutions.
-  Internal collaboration: Institutions within CaRCC shared their
   experiences and strategies for adapting to the new licensing model,
   including alternative solutions. ATWG had reached out to CaRCC
   community members in the form of a user survey to understand their
   usage and the level of dependence on Anaconda.
-  Exploring alternatives: Discussions were carried out to evaluate
   alternative tools and approaches for managing software
   environments. This included exploring open-source installers, such
   as Miniforge, and utilizing package managers like `Mamba
   <https://mamba.readthedocs.io/en/latest/>`__, `Pip
   <https://packaging.python.org/en/latest/key_projects/#pip>`__,
   `Pixi <https://pixi.sh/latest/>`__, and/or `UV
   <https://docs.astral.sh/uv/>`__. Additionally, containerization
   platforms like `Singularity
   <https://docs.sylabs.io/guides/latest/user-guide/>`__ or `Docker
   <https://www.docker.com/>`__ as possible alternatives to package
   management, as long as they employed open-source installers, and
   installing packages from scratch were explored.



Impact on Academic Institutions
-------------------------------

At the time of Anaconda's updates-to-ToS announcement, academic
organizations faced a cascade of practical and financial hurdles:

1. Escalating Licensing Costs

   Based on the original announcement, it was perceived that any
   institution with more than 200 employees must purchase a commercial
   license. For a typical mid‐sized university—supporting dozens of
   departments, central IT-managed HPC clusters, and distributed lab
   installations—annual fees could reach tens of thousands of
   dollars. These unplanned expenses threaten to divert funding away
   from core research and teaching needs.

2. Compliance Ambiguity

   CaRCC members reported receiving "non-compliance" notices for
   shared installations on central clusters. This led to some of the
   key questions remaining unanswered:

   -  Does an "academic tier" exemption cover external collaborators
      (NSF- or DoE-funded researchers without formal university
      appointments)?
   -  Can the institution provide a single "proof of affiliation" to
      Anaconda, or must every individual user register separately?
      
3. Transition Overhead

   Moving away from Anaconda-whether to conda-forge/Miniforge, Spack,
   or containers-requires substantial IT staff time, retraining of
   faculty and students, and revalidation of research pipelines. One
   peer university estimated that piloting a Spack migration consumed
   over 200 staff-hours and delayed several high-priority simulation
   campaigns by weeks.

4. Disruption to Scientific Workflows

   Researchers rely on the ease of conda install and prebuilt binary
   packages for everything from molecular dynamics to machine-learning
   toolkits. Any interruption in Anaconda service risks halting active
   data analyses, reproducibility efforts, and deadline-driven
   computational experiments.

5. Complications for Collaboration

   In multi-institution projects — such as DoE lab partnerships or
   interdisciplinary centers — a fragmented licensing landscape could
   force collaborators onto different package ecosystems, undermining
   shared environment files, container images, and joint development
   workflows.

6. Strained Budgets and Sustainability

   Redirecting grant funds and departmental budgets toward license fees
   may force difficult trade-offs: hiring fewer graduate students,
   postponing hardware upgrades, or reducing support for other
   open-source tools critical to our teaching and research missions.



Licensing and Cost Implications
-------------------------------

At the start of 2025, Anaconda Inc. `released
<https://www.anaconda.com/blog/anaconda-for-education-empowering-the-academic-community>`__
`Anaconda for Education
<https://www.anaconda.com/industries/education>`__ to accelerate AI
learning across the academic community for free of charge. This
includes access to free AI courses, storage, and tools at no cost to
users, such as researchers, students, and educators with an academic
access to the Anaconda Starter plan. The products and tools that are
included in this package are `Anaconda Distribution
<https://www.anaconda.com/download>`__, `Anaconda Navigator
<https://www.anaconda.com/products/ai-navigator>`__, `Anaconda AI
Assistant <https://www.anaconda.com/capability/anaconda-assistant>`__,
`Public Package Repository <https://repo.anaconda.com/>`__, `Anaconda
Learning <https://www.anaconda.com/learning>`__, `Cloud Notebooks
<https://www.anaconda.com/products/notebooks>`__, and `App publishing
with Panel
<https://www.anaconda.com/blog/a-new-and-simple-way-to-publish-your-data-applications>`__.

In July 2025, Anaconda Inc. published their `revised
ToS<https://www.anaconda.com/legal/terms/terms-of-service>`__,
according to which Anaconda does not require academic institutions and
universities to purchase a commercial fee license for their installers
or for access to their `package
repository<https://repo.anaconda.com/>`__, regardless of their size,
when used in course curricula, including teaching, learning, and
research at accredited educational institutions worldwide. The policy
is applicable to universities with 200 or more employees and the
200-employee threshold for paid licenses primarily applies to
commercial organizations. However, it is important to note that paid
licenses may be required for specific use cases within academic
settings, such as embedding Anaconda’s products, mirroring them, or
providing third-party access beyond standard educational use.

In order to access the academic account one needs to be either
actively enrolled or employed at an accredited academic institution
with a verified academic email address. As mentioned above, for an
accredited academic institution, the use of Anaconda package
repository continues to be free and they do not need to purchase any
business or enterprise license regardless of their size. The free-use
policy for educational entities continues to be in effect as long as
Anaconda is used in the institution's course curricula, teaching,
learning, and research. In addition to academia, Anaconda Inc. now
offers AI-based solutions by industry that include finance,
healthcare, government, manufacturing, and technology. All of the
categories come with their own price packages except for academia,
where the use is free as long as no embedding, mirroring, or access to
a third party has been carried out for their products. However, they
urge institutions to contact their `partner team
<https://legal.anaconda.com/policies/en/>`__ at
partnerships@anaconda.com should the need to pursue an embedded use
case arises in academia. This is different from what was mentioned in
their archival FAQ from `August 13, 2024
<https://web.archive.org/web/20250506042444/https://www.anaconda.com/web/20250506042444/https://www.anaconda.com/pricing/terms-of-service-faqs>`__
(not a valid URL anymore), where no such requirement was stated for
any kind of academic use including embedding, mirroring, or third
party access.

Given that the state of affairs is still evolving at Anaconda Inc. and
that there is a fair amount of ambiguity in what would constitute as
an out-of-compliance case and when would a license be required, the
ATWG has decided to come up with a number of recommendations for the
academic community that rely upon alternative methods to achieve what
can be accomplished with Anaconda distribution. Additionally, ATWG
strongly feels that the campus research computing teams should not be
expected to police the academic community in how Anaconda
Inc. products are being utilized, by user(s), once the distribution
has been installed on academic and research clusters in full
compliance with Anaconda Inc.'s policies for academia. Hence, having
alternative solutions would help the research community decide, in an
informed manner, on how to proceed with package management.

The proposed solutions are all based on open-source software and
distribution that do not depend on any of the Anaconda Inc. products,
thereby allowing us to avoid any license or out-of-compliance issues
with them. A summarized version of these solutions is mentioned in the
:ref:`Alternative Solutions and Recommendations` section, whereas a
detailed description of utilizing these methods is provided in the
:ref:`Appendix`.


Compliance Concerns
-------------------

The recent changes to Anaconda's licensing model, which limit the
previously free distribution and usage of its platform for
non-commercial purposes, have raised significant compliance concerns
for academic and research institutions. These concerns are especially
critical as institutions balance the need for cutting-edge research
tools with the strict legal and regulatory frameworks governing their
operations. As such, educational entities are exempt from the paid
license requirement provided they use Anaconda Offering(s) solely for
curriculum-based course or non-commercial research where the Anaconda
Offering(s) is guaranteed to be not mirrored, embedded, or
redistributed.

**1. Licensing Restrictions and Compliance Risks:**

Anaconda's previous licensing model allowed academic and research
institutions to use the distribution platform freely without incurring
licensing fees, provided the use was non-commercial in nature. This
model has allowed institutions to develop and deploy software
environments, often across large-scale high-performance computing (HPC)
systems, with minimal administrative burden.

However, the new licensing changes— particularly for non-commercial
users —could potentially introduce the risk of non-compliance in the
following areas:

*License/Agreement Enforcement:*
   Institutions must now ensure that any use of Anaconda's distribution
   within non-commercial research environments adheres to the new terms.

According to their current `Academic
Policy <https://www.anaconda.com/legal/terms/academic>`__, an
institution qualifying for an Eligible Academic Institution (EAI)
account should secure an institution-wide agreement for use of Anaconda.
The institution must reach out to their support team to initiate the
process of completing the EAI Agreement with Anaconda and set up an
academic account. However, the agreement prohibits researchers/users
from extending their scaled enterprise deployment to commercial,
non-educational use while using Anaconda at an EAI. This also includes
redistribution of system outputs, which is permitted only within the
scope of non-commercial, educational use under the Academic Policy.

Anaconda reserves the right to verify the institution's eligibility for
the Anaconda for Education Program and the access to this program's
benefits are valid for twelve months from the signing of the EAI
Agreement. Once the duration is expired, the agreement must be renewed
to continue accessing the benefits.

Additionally, Anaconda extends the participation in this program to
individuals as long as they are associated with an EAI. However,
according to their current `Terms of
Service <https://www.anaconda.com/legal/terms/terms-of-service>`__,
section 5, the institution would be responsible for ensuring that all
their users follow these Terms and for any violations of these Terms by
their users. In the case of any modification to the terms of their
Academic Policy, Anaconda will post them to `Anaconda's legal
page <https://www.anaconda.com/legal/terms>`__ with a ninety day notice.
The program participants will not be directly notified but it will be
their responsibility to review the terms of this Policy periodically to
ensure that no new updates have been released.

All of the above puts an additional responsibility on the institution's
representative to ensure that the institution-wide agreement remains
valid, is adhered to at all times, and policy changes are tracked
regularly to avoid any legal complications that might originate from
lack of thereof.

*Auditability:*
   Without clear mechanisms in place to track which users are operating
   under the free or paid licenses, research institutions risk running
   afoul of audit processes. Many institutions are subject to external
   audits, particularly when dealing with government-funded research or
   grants, and failing to demonstrate compliance with software licensing
   requirements can result in penalties or reputational damage.


**2. Potential Legal Implications:**

Academic institutions are often bound by stringent intellectual property
agreements, especially those that receive government or private funding.
The violation of software licensing agreements may have downstream legal
consequences, including:

*Loss of Funding:*
   Non-compliance with software licenses could lead to the forfeiture of
   funding, particularly when grantors specify that software tools and
   infrastructure must be licensed properly and legally.

*Legal Disputes:*
   Institutions that inadvertently breach Anaconda's new licensing terms
   may be subject to litigation. While legal action might be rare, even the
   risk of potential lawsuits can cause significant disruptions and
   reputational harm to an institution, which is particularly concerning
   for publicly-funded research.

**3. Institutional Governance and Policy Updates:**

Institutions must review and potentially update their governance and
policy frameworks to reflect these new licensing terms. Specific areas
for policy development and review may include:

*IT Policies:*
   Updating institutional IT policies to ensure that all research computing
   resources, including HPC clusters, are compliant with Anaconda's new
   licensing terms. This includes developing clear guidelines for faculty
   and researchers regarding which licenses are required for specific
   projects or environments.

*Procurement Processes:*
   Revising procurement processes to account for the financial and legal
   implications of new licensing models. This could involve negotiating
   blanket licenses for entire departments or campuses or deciding whether
   to migrate to alternative software solutions to mitigate compliance
   risk.

**4. Secure Environment Cluster:**

.. attention::

   We might mention `Anaconda Business
   <https://www.anaconda.com/guides/the-ultimate-guide-to-open-source-security-with-python-and-r#:~:text=Anaconda%20Business%20is%20an%20enterprise%2Dgrade%20package%20repository,do%20not%20comply%20with%20your%20legal%20requirements.>`__
   for secure environments.

Institutions operating a secure environment cluster would need to
evaluate the security level of their cluster to decide whether the
purchase of Anaconda's distribution is warranted or not. For example,
any cluster that is required to ensure privacy and security at
federally recognized standards, such as NIST 800-53 and NIST 800-171,
must have Anaconda's distribution available on the cluster instead of
utilizing open-source alternatives. This is because the open-source
alternatives, listed below, are not guaranteed to be compliant with
security standards needed for regulated data and could compromise a
secure environment cluster. On the other hand, most clusters with
requirements of housing sensitive datasets with Data Usage Agreement
(DUA) and/or IRB's could still utilize alternative methods, mentioned
below, for installing packages.

Keeping all of the above in mind, some of the key questions that still
remain unanswered are:

- Does an “academic tier” exemption cover external collaborators (NSF-
  or DOE-funded researchers without formal university appointments)?

- Can the institution provide a single “proof of affiliation” to
  Anaconda, or must every individual user register separately?

- Would it be possible for the research community to obtain further
  clarity from Anaconda Inc. on free distribution of containerization
  platforms, such as Singularity/Apptainer or Docker?

Hence, exploring alternative open-source solutions for managing
packages and installing software for scientific workflows is
imperative for the research community to proceed with their research
and collaboration in an informed manner.

.. _Alternative Solutions and Recommendations:

Alternative Solutions and Recommendations
-----------------------------------------

Given the compliance challenges raised by Anaconda's new licensing
model, academic and research institutions need to explore alternative
solutions to mitigate both financial and operational risks. Below are
several viable options that can help institutions maintain operational
efficiency and compliance while reducing dependency on Anaconda's paid
licensing structure.

**1. Open-Source Package Management Systems**

One of the most straightforward alternatives is to transition to fully
open-source package management systems that can replace Anaconda's
distribution platform, offering similar functionality without
licensing restrictions, such as conda-forge. This allows institutions
to create isolated environments without requiring a paid license. For
a full list of options, see :ref:`Appendix`.

**2. Docker and Containerization**

Containerization platforms provide another viable alternative by
allowing research institutions to build and deploy reproducible research
environments in isolated containers. Containerization allows users to
create self-contained, portable images that can be deployed across other
computing platforms more easily. These containers can also be prebuilt
to include alternative open-source environments and the necessary
software packages, eliminating the need for the Anaconda distribution.

Anaconda Inc.'s `Terms of
Service <https://www.anaconda.com/legal/terms/terms-of-service>`__ (as
of August 29, 2025) prevent "embedding" ("incorporating Anaconda Content
into another product or service") and prevent "distribut[ing] the
Platform or any Offering to anyone other than your Users." Anaconda
Inc.'s `Academic
Policy <https://www.anaconda.com/legal/terms/academic>`__ (as of August
29, 2025) attempts to modify these restrictions slightly, allowing one
"to redistribute system outputs solely for academic purpose," though
it's not clear what they mean by "system outputs."

Our concern with these restrictions is a common use-case of a researcher
creating a Docker (or Singularity/Apptainer) Container to share their
code and/or workflows with other researchers, possibly at other academic
institutions. If that researcher includes Anaconda Inc. packages within
the container image, it could be considered "embedding," which is not
allowed; sharing that container with others outside their own
Institution would certainly seem to count as "distribution". It is
unclear if a Container image would be considered as "system outputs" so
sharing one might not be allowed outside the originating Institution.

The only solution we see in this case is to make sure that the
restricted Anaconda Inc. packages are not included in any Containers.
However, it would be quite difficult for any Institution to monitor the
behavior of all researchers at the level of creating and/or sharing
Container images. A given image could be potentially scanned for
Anaconda, Inc.'s packages, but it is not always clear where a Container
image has come from, or with whom it might have been shared.

**3. Virtual Machines (VMs) and Cloud-based Solutions**

For institutions that require greater flexibility and scalability,
moving to cloud-based research environments or using virtual machines
(VMs) can provide another way to sidestep licensing issues while
ensuring compliance. Institutions can also create custom virtual
machines with specific research environments, using open-source package
managers, to replace Anaconda environments. These VMs can be hosted on
local servers or on cloud platforms.

**4. Hybrid Solutions: Combining Multiple Tools**

In many cases, institutions may find it effective to combine multiple
alternative solutions based on specific needs.

Each of these alternative solutions offers different trade-offs in terms
of cost, compliance, and operational complexity. The best solution for
any given institution will depend on its specific needs, infrastructure,
and available resources.

If an institution decides to move away from Anaconda's licensing
model, they should evaluate the potential of these solutions based on
their current research tools, budget constraints, and long-term
goals. A hybrid approach that incorporates multiple tools may provide
the greatest flexibility and minimize both the compliance risks and
operational burdens of the new licensing restrictions.


Conclusion
----------

While Anaconda's licensing changes pose significant challenges, they
also present an opportunity to reexamine our dependencies and develop
more resilient software ecosystems. Through collaboration and
proactive planning, we can ensure that academic research continues to
thrive without disruption. To that end, our recommendations to the
community are mentioned below.

Recommendations:
''''''''''''''''

We propose the following actions to mitigate the impact:

1. **Continue Advocacy:** Strengthen dialogue with Anaconda to seek
   adjustments that better support academic institutions, such as
   discounted or waived fees for specific use cases.
2. **Leverage Community Collaboration:** Build on the efforts within
   CaRCC to document and share best practices for managing the
   transition.
3. **Evaluate and Pilot Alternatives:** Proactively explore and test
   alternative package management and distribution solutions to reduce
   reliance on Anaconda. See :ref:`Appendix`
4. **Establish Contingency Plans:** Develop strategies to ensure
   research continuity if access to Anaconda becomes restricted or
   unsustainable.


.. _Appendix:
   
Appendix 
---------

Scripts and Tools
'''''''''''''''''''''
The Anaconda Transition Working Group set up a directory for scripts and tools to assist with institutions in their migration from Anaconda commercial channels. This has been spun off into a forked repository so that the community can continue to improve and contribute to those efforts. https://github.com/jacreech/anaconda-transition-community-scripts

Open-source Solutions
'''''''''''''''''''''

Below is a list of open-source options that the ATWG has put
together. This is not a complete list but is a good starting point
should an insitution or a research team decide to go the open-source
route.

- Miniforge (pulls from conda-forge by default)
- Pixi (a modern alternative to miniforge)
- Pip (pulls from PyPI)
- Pip + venv
- Poetry / Pipenv / uv (pulls from multiple sources)

  
Conda vs Mamba
''''''''''''''

`Conda <https://github.com/conda/conda>`__ and `Mamba
<https://github.com/mamba-org/mamba>`__ are package managers and
command-line tools, they can be used mostly interchangeably as Mamba
was created as a drop-in replacement for Conda (with identical
CLI). Both support channels like `conda-forge
<https://github.com/conda-forge>`__ and `Anaconda’s defaults
<https://www.anaconda.com/docs/tools/working-with-conda/reference/default-channels>`__. The
use of Anaconda Inc.’s defaults channels is subjected to `Anaconda
Inc.’s TOS <https://legal.anaconda.com/policies/en/>`__.

Conda is written in python and Mamba is written C/C++ and has a faster
dependency resolution as it uses `libsolv
<https://github.com/openSUSE/libsolv>`__, which is a fast dependency
solver also used by Linux package managers, and it can also
parallelize downloads speeding installation further. As of version
`23.10.0
<https://conda.github.io/conda-libmamba-solver/user-guide/>`__ conda
uses by default the `conda-libmamba-solver` plugin which allows conda
to use the same `libsolv` solver used by mamba (see:
https://conda.github.io/conda-libmamba-solver/user-guide/).

Conda can be used independently of the Anaconda distribution (which
uses conda as its package manager but also includes tools such as
`Spyder <https://www.spyder-ide.org/>`__).  Mamba was originally
developed by `QuantStack <https://quantstack.net/>`__ and is
distributed by QuantStack and Mamba contributors. Both package
managers are open source and licensed under the BSD 3-Clause License.

Conda and Mamba are general purpose package managers which offer
support for: python, R, C/C++, JavaScript/node, compilers,
etc. Alternatives to conda and mamba are generally only available for
python (and for specific versions of python) and do not cover system
libraries.

There are numerous permutations of these tools for installers
available that include different combinations of the components
described here. These include “micromamba”, “mambaforge”, etc.


Conda vs Miniforge and alternate conda package channels
'''''''''''''''''''''''''''''''''''''''''''''''''''''''

You can continue to use conda as a package manager, but would need to
configure it to only install packages from community-provided sources
that do not require a license.  Conda packages are organized into
`channels
<https://docs.conda.io/projects/conda/en/latest/user-guide/concepts/channels.html>`__,
where each channel is a different source for packaged software.

Conda typically comes configured to install packages from the
"defaults" channel, which supplies packages from the Anaconda,
Inc. repository. Use of those packages may require a license from
Anaconda, Inc. A common alternative channel is `conda-forge
<https://conda-forge.org/>`__, which provides a large collection of
community-supplied packages. Another commonly used community channel
is `bioconda <https://bioconda.github.io/>`__.

.. attention::

   According to their archival FAQ from `May 2025
   <https://web.archive.org/web/20250506034856/https://www.anaconda.com/web/20250506034856/https://www.anaconda.com/pricing/terms-of-service-faqs>`__,
   we may not need to block Anaconda.com channels. However, ATWG had
   conducted their own tests by blocking `Anaconda repository
   <https://repo.anaconda.com>`__ and found out that one can continue to
   install packages using the bioconda channel or python packages in R
   using the `reticulate package
   <https://rstudio.github.io/reticulate/>`__ with "conda-forge" set
   as the default channel, without any issues.
   

Important Update on the "defaults" Channel
''''''''''''''''''''''''''''''''''''''''''

- Conda-forge has released a transition guide for migrating away from
  the "defaults" channel in the context of miniforge. Note that:
  * The "defaults" channel has been deprecated
  * It is scheduled for removal in version 25.9

    
Resources
^^^^^^^^^
- Transition Guide: https://conda-forge.org/docs/user/transitioning_from_defaults/
- Deprecation Postponement Details: https://github.com/conda/conda/pull/14662

Additional recommendations if using conda-forge
'''''''''''''''''''''''''''''''''''''''''''''''

- Using conda-forge, if you don't already have conda installed

  Install "Miniforge" instead of installing the Anaconda distribution
  or Miniconda.
  Miniforge is a version of conda that is pre-configured to only
  access the "conda-forge" channel. See
  https://conda-forge.org/download/ for this option. The downside of
  Miniforge is that unlike the standard Anaconda distribution, Miniforge does
  not create a rich "base" environment with 300+ packages to get you
  started. Rather, Miniforge’s “base” environment is intentionally
  minimalistic and is meant to serve the functionality of the
  installer itself.  You will then need to either populate this “base”
  environment with packages of your choice, or to create additional
  conda environment(s) and specify which packages you want to use.
  The command would look something like:

  .. code-block:: console
 
    $ conda create -n environment_name package1 package2 ... packageN

  For a more specific example:

  .. code-block:: console
 
   $ conda create -n mypandas numpy pandas

- Using conda-forge, if you already have conda installed

  You can see which channels conda is configured to use like so:

  .. code-block:: console
 
   $ conda config --show channels
   channels:
     - defaults

  You can then swap one channel for the other like so:

  .. code-block:: console
 
   $ conda config --prepend channels conda-forge
   $ conda config --remove channels defaults
   $ conda config --show channels
   channels:
     - conda-forge

"Conda-forge" is a large community, but may not have every package you
need.  If you are interested in a particular package, you can find if
any channels offer it by searching for it on the anaconda.org website
(not the same as anaconda.com). If you find a channel you want
conda to install packages from, you can add it to the conda
configuration as was done in the above example.

.. note:: While the community-provided packages are stored on
           Anaconda, Inc.'s servers as a courtesy, they are not owned
           or created by Anaconda, Inc. so do not fall under
           Anaconda's licensing terms.


Overview Conda vs Pip
''''''''''''''''''''' 

.. attention:: ADD section to the fact that many project are now
               putting effort into creating wheels that allows for an
               easy installation of packages
	       
               - Call out a few examples: databases / in cases you
                 need to install dependencies (kafka stream / official
                 kafka client works from conda but compiling from
                 scratch can be intensive)
		 

Pip is appropriate for:

- Pure Python projects
- Access to the comprehensive PyPI repository
- Projects with Python-only dependencies

Comparison: Conda vs pip:

+-------------------+------------------------------------+-------------------+
|                   | pip                                | conda             |
+-------------------+------------------------------------+-------------------+
| Installs Packages | Wheel or source/requires compilers | Binaries/compiled |
+-------------------+------------------------------------+-------------------+
| Used for          | Python                             | Multiple languages|
+-------------------+------------------------------------+-------------------+
| Dependency check  | Some                               | Yes               |
+-------------------+------------------------------------+-------------------+


Virtual environments in Python
''''''''''''''''''''''''''''''

Virtual environments can be created via `Python’s venv module
<https://docs.python.org/3/library/venv.html>`__, for convenience
users may opt to store such environments in a centralized directory,
conventionally named: `$HOME/.virtualenvs`, or in a directory within a
user’s project directory, conventionally named: `.venv` or `venv`,
(see also: `Install packages in a virtual environment using pip and
venv
<https://packaging.python.org/en/latest/guides/installing-using-pip-and-virtual-environments>`):

.. code-block:: console
 
   $ python -m venv $HOME/.virtualenvs/<ENV_NAME>
   $ source $HOME/.virtualenvs/<ENV_NAME>/bin/activate
   # any successive installation via pip will occur in 
   # $HOME/.virtualenvs/<ENV_NAME> (no need to use `--user` flag):
   $ pip install --upgrade pip
   # a virtual environment can be deactivated with:
   $ deactivate

A Python environment can be created using a `requirements.txt file
<https://pip.pypa.io/en/latest/user_guide/#requirements-files>`__:

.. code-block:: console
 
   $ python -m venv $HOME/.virtualenvs/<ENV_NAME>
   $ source $HOME/.virtualenvs/<ENV_NAME>/bin/activate
   $ python -m pip install -r requirements.txt

A `requirements.txt` file can be created with:

.. code-block:: console
 
   $ pip freeze > requirements.txt

A limitation of the `venv` module is that a) it is only limited to
Python packages, and b) it can only create virtual environments with a
Python version as the one used to create the Python environment. Other
tools exist to overcome the latter limitation, such as conda, mamba,
Poetry/Pipenv and UV.

Resources:
^^^^^^^^^^

- `Understanding Conda and Pip <https://www.anaconda.com/blog/understanding-conda-and-pip>`__
- `Pip vs Conda: A Guide to Managing Python Packages for Data Scientists <https://saturncloud.io/blog/pip-vs-conda-a-guide-to-managing-python-packages-for-data-scientists/>`__
- `Pip vs Conda: key differences <https://saturncloud.io/blog/pip-vs-conda-a-guide-to-managing-python-packages-for-data-scientists/#pip-vs-conda-key-differences>`__
- `Install packages in a virtual environment using pip and venv <https://packaging.python.org/en/latest/guides/installing-using-pip-and-virtual-environments/>`__

Checking for Anaconda Repository Dependencies
'''''''''''''''''''''''''''''''''''''''''''''

Get a list of your environments:

.. code-block:: console
 
   $ conda env list
   # conda environments:
   #
   myenv        /home/user/.conda/envs/myenv
   test         /home/user/.conda/envs/test
   base      *  /apps/software/Miniforge3/24.1.2-0

For each environment's path listed above, check where the installed
packages came from:

.. code-block:: console

   $ conda list --explicit --prefix /home/user/.conda/envs/myenv | grep anaconda.com
   https://repo.anaconda.com/pkgs/main/linux-64/libgd-2.2.5-h8e06009_4.conda

If you see any packages listed from "repo.anaconda.com", these fall
under the Anaconda Terms of Service and may require a license for
continued use.

Pixi
''''''''''
Pixi is a fast and modern package manager that handles the same types of environments as Miniforge. It includes other features, but one of its main functions is to act as a package manager for conda environments. A new installation includes conda-forge as the default channel. Like Miniforge, it includes support for other conda channels, pip, etc.

A guide to migrating from anaconda is available at the Pixi site here: https://pixi.prefix.dev/latest/switching_from/conda/

R and Anaconda
''''''''''''''

Anaconda can be useful to manage separate virtual environments and R
versions. This functionality can be retained while avoiding paid
channels by sticking to strict channel sources using bioconda and
conda-forge. Pixi or miniforge are good options for this. Like with
Python, some R packages may not be available in conda-forge but should
be available in `CRAN <https://cran.r-project.org/>`__ or other
non-conda repositories. Additionally, virtual environments are
available within R itself via `renv
<https://rstudio.github.io/renv/>`__. R also offers the ability to
specify different package paths using R_LIBS_USER / .libPaths() which
offers the functionality of virtual environments.


Other Alternatives
''''''''''''''''''

The primary motivating feature for many researchers from the beginning
for the user of a tool like Anaconda was the ability to materialize a
specific Python and its dependencies (Python and non-Python) on the
local filesystem as an unprivileged user. This is what a virtual
environment solution solves. Two new developments in recent times that
alleviate the need for this in the first place are improvements and
adoption of build-from-source package management (i.e. Spack) and
containerization (e.g., Apptainer).

Spack
'''''

Spack is an HPC-centric package manager developed by the Department of
Energy (DoE) national labs which allows users to instantiate one or
more instances of itself, each of which can compile the whole world
all the way down the dependency tree. This satisfies the need for
getting specific Python versions onto the system for unprivileged
users and/or non-Python dependencies. In fact, Spack has the ability
to materialize proper virtual environments out of package
requirements. The major downside here is in the combinatorial
complexity of all the possibilities to satisfy these dependencies and
the time cost for compiling everything. The initial setup of these
instances can be a big lift but once done users can benefit from a
shared build-cache and mirroring of packages to accelerate
installation of packages.

Containers
''''''''''

Entirely separate from the present discussion is the modern quest for
reproducibility and reusability of research software driving the
adoption of container technologies like Docker, Apptainer, Podman,
etc. Again, with the goal being to allow unprivileged users to bring
their own Python and install both Python and non-Python dependencies
into a self-contained environment, container technologies satisfy this
need simultaneously with their added benefits to reproducibility
(single hashable file, registry, DOI, etc.), and reusability
(relocating whole software environments to new users and computing
systems). Tools like Anaconda stem in large part from the fact that
researchers did not have admin rights to the computing systems they
run on, and they wanted more than one distinct instance of the
software stack. Containers give them this, entirely obviating the
use-case for package managers like Anaconda.

