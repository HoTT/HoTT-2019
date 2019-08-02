---
layout: page
permalink: /coq-installation/
title: "Coq Installation"
---


1. Make sure you have all the prerequisites for compiling Coq. These are
   `OCaml`, `camlp5`, `git`, and `make`. If you want to build the HoTT version
   of the graphical user interface `coqide` you also need the `lablgtk2` and
   `lablgtksourceview2` libraries. To get these, check your package manager. On
   Debian or any distribution with apt-get you can run the script
   `./etc/install_coq_deps.sh` which installs the dependencies automatically.

2. Get the HoTT library (skip this step if you already have it):

```
 git clone https://github.com/HoTT/HoTT.git
 cd HoTT
 ```

3. From the HoTT directory run the following commands:

```
 etc/install_coq.sh
 ./autogen.sh
 ./configure COQBIN="`pwd`/coq-HoTT/bin"
 make
 ```

It may take a while to compile the custom Coq.

4. You can now use the HoTT library in place by running `./hoqtop` and `./hoqc`.
   You can also use `./hoqide` which is the version of `coqide` running the
   `hoqtop` toplevel if you have compiled it successfully. If you want the
   commands `hoqtop`, `hoqc`, `hoqide` available system-wide, run:

```
 make install
```
