dotfiles
========

My personal dotfiles

## Requirements

* netstat (net-tools)
* rsync
* apt-file
* sudo
* sysvinit

## Install

Run `./install.sh`

## How to use

Keep development stuff in `$HOME/src` then do `hax thing` to jump into `$HOME/src/thing` (thing is a wildcard).

See all the connections (including listening) with `what` (for port numbers) or use `wat` (for port names).

See all your open SSH connections (in and out) using `where`.

Quicker (apt) package management: `ags thing` to search for it, `agi thing` to install it or `agp thing` to see what package provides it.  `agu` will update `apt-cache` and `apt-file`.

Play with your services `svc mysqld restart` does a `sudo service`.

Get info about your cores with `cpuinfo`.

Check the syntax of every `rb` file in the current and sub directories with `rcheck`.
