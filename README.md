# gitfire
A fun wrapper for git.  Will instantly check in all code in case of a FIRE command and you have to evacuate the building :S

## Overview

This project provides an alias wrapper around the git command, to add an additional subcommand called "fire".  When called in a single command all code will be added, commited and pushed so you can exit the building quickly and gracefully.

## Usage

To install the alias add the following to your profile scripts such as .bashrc or .profile (replacing <path to this project> with the actual path to where you install this code.  

```sh
source <path to this project>/alias.sh
```

You can now use the code as so:

```sh
git fire
```

The fire command takes one optional parameter incase you wish to add a quick commit message:

```sh
git fire -m "Emergency meeting"
```

All other git commands should still pass unaffected to the actual git executable.  
