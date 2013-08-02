Dotfiles
========

Installation process based on [Ryan Bates](https://github.com/ryanb/dotfiles/) and [Karel Minarik](https://github.com/karmi/dotfiles) dotfiles.

Installation
============

Shell
-----

By default [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) is used.

````bash
git clone git://github.com/vhyza/dotfiles ~/dotfiles
cd ~/dotfiles
rake install
````

OS X
----

There are two scripts for OS X environment customization.

* `development.sh` for [homebrew](http://brew.sh/), [git](http://git-scm.com/), [mac os x console tools](http://connect.apple.com) (manually), [rbenv](https://github.com/sstephenson/rbenv) and [ruby](http://www.ruby-lang.org/) installation


* `customize.sh` for OS X customizations like hostname, dock settings, [iTerm2](http://www.iterm2.com/) settings, font installation, various OS X and applications (Mail, Finder...) settings, tweaks etc...

````bash
cd ~/dotfiles/mac
./development.sh
./customize.sh
````