---
layout: page
permalink: /summer-school/
title: "HoTT Summer School - August 7 to 10"
---

### Topics and Instructors

* Synthetic homotopy theory: [Egbert Rijke](https://github.com/EgbertRijke) (University of Illinois, USA)
* Semantics of type theory: [Jonas Frey](https://sites.google.com/site/jonasfreysite/) (Carnegie Mellon University, USA)
* Cubical methods: [Anders Mörtberg](http://www.cs.cmu.edu/~amoertbe/) (Carnegie Mellon University, USA and Stockholm University, Sweden)
* Higher topos theory: [Mathieu Anel](http://mathieu.anel.free.fr) (Carnegie Mellon University, USA)
* Formalization in Agda: [Guillaume Brunerie](https://guillaumebrunerie.github.io) (Stockholm University, Sweden)
* Formalization in Coq: [Kristina Sojakova](http://www.cs.cornell.edu/~ks858/) (Cornell University, USA)

### Organizers

* [Steve Awodey](https://www.andrew.cmu.edu/user/awodey/) (Carnegie Mellon University, USA)
* [Jonas Frey](https://sites.google.com/site/jonasfreysite/) (Carnegie Mellon University, USA)
* [Mathieu Anel](http://mathieu.anel.free.fr/) (Carnegie Mellon University, USA)
* [Nicola Gambino](http://www1.maths.leeds.ac.uk/~pmtng/) (University of Leeds, UK)
* [Michael Shulman](http://home.sandiego.edu/~shulman/) (University of San Diego, USA)

### Venue

The summer school will take place in the **Giant Eagle Auditorium**, room number
A51 in CMU's **Baker Hall** building (see [conference
map](https://drive.google.com/open?id=1Eq3-6x6P75jL6tUcY7eDLOuoL2-7NbHc&usp=sharing)).

We will start off Wednesday (August 7) morning with coffee at 8:45 AM in front
of the lecture hall, the first course will begin at 9:15 AM. The following days
courses will start at 9 AM.

### Schedule

![Summer school program](/images/ss-schedule.png)

### Prerequisites

Familiarity with basic ideas and concepts of homotopy type theory will be
helpful for all courses. We recommend that beginners have a look at the first
sections of Egbert Rijke's [course notes](/images/hott-intro-rijke.pdf) and/or
the [HoTT
book](https://hott.github.io/book/nightly/hott-online-1212-g0d25f68.pdf).

For the formalization classes you will need to have the appropriate versions of
the Agda and Coq proof assistants installed (or use an online version in case of
Coq), see the course descriptions below for more details.

### Abstracts

#### Synthetic homotopy theory -- Egbert Rijke

In this introduction to synthetic homotopy theory we start by introducing the
rules of dependent type theory. Using the homotopy interpretation of type theory
we develop many notions that might also be familiar from homotopy theory, such
as equivalences, contractible types, and the univalence axiom. Thus we will be
doing homotopy theory in type theory. This is also called synthetic homotopy
theory. In the second lecture we introduce the first higher inductive type: the
circle. Furthermore, we show that there is a type theoretic analogue of the
fundamental cover of the circle, characterizing its identity type. In the third
lecture we introduce homotopy groups of types, and show how to construct the
Hopf fibration. Since the circle is a 1-type, the Hopf fibration can be used to
show that the homotopy groups of the 2-sphere and the 3-sphere agree from the
3rd homotopy group onwards.

[Course notes](/images/hott-intro-rijke.pdf).

#### Semantics of type theory -- Jonas Frey

This course will give an overview of the categorical and homotopical semantics
of dependent type theory. I will start out by presenting interpretations in
locally cartesian closed categories and display map (fibration) categories first
on a non-strict, informal level, and then introduce the notion of category
with families after discussing the coherence problems of the non-strict
approach. After sketching the soundness proof of the interpretation of type
theory in categories with families, I will speak about strictification of
non-strict models.

Prerequisites: Knowledge of basic category theory -- in particular the concepts
of adjoint functor and cartesian closed category -- will be helpful. See for
Awodey's textbook *Category theory* (2006).

#### Cubical methods -- Anders Mörtberg

Cubical methods have played an important role in the development of HoTT during
the last few years. The original motivation for considering these methods was to
give constructive justifications to HoTT, in particular to the univalence axiom.
These developments have also led to other major advances in the field, including
proof assistants with native support for computational univalence, semantics and
a syntactic schema for HITs, canonicity results, and a variety of independence
results. This course will give an introduction to these methods, both from a
syntactic perspective in the form of cubical type theory and from a semantic
perspective in the form of cubical set models.

[Course notes](http://www.cs.cmu.edu/~amoertbe/papers/cubicalmethods.pdf).

#### Higher topos theory -- Mathieu Anel


I will give a presentation of the notion of ∞-topos by means of the higher
algebraic theory of logoi.

* Course 1: Homotopy theory and localization of categories (homotopy, fractions,
model structure, Dwyer-Kan localization)
* Course 2: The theory of logoi (descent, universe, definitions, monadicity, free
logos, ∞-topos, comparison with 1-topos)
* Course 3: Features of logoi (quotient, classifying logoi, truncations,
∞-connected objects, modalities)

Reference: [Anel, M and Joyal, A.
*Topo-logie*](http://mathieu.anel.free.fr/mat/doc/Anel-Joyal-Topo-logie.pdf)

#### Formalization in Agda -- Guillaume Brunerie

This course is an introduction to the Agda proof assistant. I will show you the
[main features of Agda, how to develop proofs interactively with it, and how to
use it for formalization of mathematics and of homotopy type theory. There will
also be various practical exercises.

In order to try Agda for yourself while following the course (highly
recommended), you will need a laptop with Agda version 2.6.0.1 (or newer) and
Emacs (a text editor used by Agda for editing proofs interactively). See the
installation instructions
[here](https://hott.github.io/HoTT-2019/agda-installation/) or
[here](https://agda.readthedocs.io/en/v2.6.0.1/getting-started/installation.html).

#### Formalization in Coq -- Kristina Sojakova

This course will focus on using the HoTT version of the Coq proof assistant to
formalize arguments from homotopy type theory. We will go over a few simpler
examples to illustrate the basic techniques and use of the library. The students
will then have the option to pursue more challenging exercises on their own
and/or contribute to the formalization of the HoTT book.

We encourage everyone intending to do serious formalization to consider getting
a **Linux** distribution (e.g., Ubuntu). The installation instructions for the
HoTT version of Coq on Linux can be found
[here](https://github.com/HoTT/HoTT/blob/master/INSTALL.md), see also the
excerpt [here](https://hott.github.io/HoTT-2019/coq-installation/).

On **Windows**: there is now a beta version of Coq 8.10 that includes the HoTT
library and the HoTT version of CoqIDE, courtesy of Michael Soegtrop.
[Here](https://gitlab.com/coq/coq/-/jobs/261177798/artifacts/browse/artifacts/)
is the 64-bit version, and
[here](https://gitlab.com/coq/coq/-/jobs/261177800/artifacts/browse/artifacts/)
is the 32 bit version.

For people who just want to get through the course, there is an option to use
the [HoTT version of Coq from within a browser](https://x80.org/rhino-hott/),
that should work on the latest version of Chrome and/or Firefox.
