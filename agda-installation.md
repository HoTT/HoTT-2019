---
layout: page
permalink: /agda-installation/
title: "Agda Installation"
---

#### Installation instructions for Linux

Install the latest versions of `cabal-install` and of `emacs` via your
package manager, then open a
terminal and run the commands

```
cabal update
cabal install alex happy Agda
agda-mode setup
```

Note that even if your Linux distribution has an `agda` package
available it might not be recent
enough, so you should use the instructions above (in particular
Debian, Ubuntu, and Fedora all seem
to have outdated versions of Agda in their repositories).

#### Installation instructions for Mac OS X

Homebrew provides prebuilt packages for OS X. Install Homebrew and then run

```
brew install agda
agda-mode setup
```

Hopefully this should be all that is needed.

#### Installation instructions for Windows

Download emacs from
[http://ftpmirror.gnu.org/emacs/windows/emacs-26/emacs-26.2-x86_64.zip]
and
unzip it somewhere (preserving the directory structure). You can now
run emacs with the
`bin\runemacs.exe` executable. Feel free to create a desktop shortcut to it.

Download and install the Haskell Platform from
[https://www.haskell.org/platform/windows].

Open the Windows command prompt and run the following two commands.
The second command will take a
rather long time as it will compile Agda from scratch together will
all of its dependencies.

```
cabal update
cabal install Agda
```

Create a file called `.emacs` (with the leading period) in the directory
`C:\Users\##yourusername##\AppData\Roaming` containing the following two lines

```
(load-file (let ((coding-system-for-read 'utf-8))
                (shell-command-to-string "agda-mode locate")))
```

#### Testing

You can test your installation as follows.

Open Emacs and create a new file (File > Visit New File…) that you
name `test.agda`. You should see
`(Agda)` on the bottom of the window.

Type the text below in the file (type! do not copy-paste!).

```
postulate \bN : Set
```

As you type, the `\bN` should automatically change to a blackboard
bold `N`. If it turns to a box or
to something weird, there is something wrong with your fonts. Type
`Ctrl-C` followed by `Ctrl-L`, it
should now show `(Agda:Checked)` at the bottom of the buffer.
