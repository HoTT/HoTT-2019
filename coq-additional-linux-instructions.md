---
layout: page
permalink: /coq-additional-linux-instructions/
title: "Additional Coq instruction notes for Linux Users"
---


## System dependencies
- The gtk-related dependencies in the script `etc/install_coq_deps.sh` are out of date. You need the gtk3 versions instead of the gtk2 ones.
- Here are alternate commands to get the system dependencies for Ubuntu users.
```
sudo apt update
sudo apt install curl sed grep wget tar libgtk-3-dev libgtk3sourceview-3.0-dev libexpat1-dev 
```

## opam dependencies
- Run `opam --version` to check that opam is installed and up to date. If the opam version is < 2, you should install opam, using the curl command provided at https://opam.ocaml.org/.
```
    sh <(curl -sL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)
```

- You should then run `opam init` to make sure opam is initialized. I recommend allowing opam to change your `.profile` file when it asks for permission.
- To install the required ocaml libraries, run 
```
opam install ocaml camlp5 lablgtk3 lablgtk3-sourceview3 ocamlfind num
```

## The rest
- The steps above should be performed before running `/etc/install.sh`
- After this, you should be able to follow the rest of the steps in order.

## Bonus Tips
- When you execute `etc/install.sh`, you can look at the output to see the result of a series of checks it performs at the beginning of the installation.
- If opam complains that you do not have a switch installed, run 
```opam switch create 4.0.7```