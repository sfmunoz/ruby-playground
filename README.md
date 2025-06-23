# ruby-walkthrough

It's been a while since I first learned **Ruby**. Now I want to use it again so I'm creating this project to use for learning and for future reference.

## Starting point

[Ruby Programming by Derek Banas](https://www.youtube.com/watch?v=Dji9ALCgfpM): even though it's a 2015 video it's fast, cuts to the chase and it's clutter-free.

> [Ruby Programming Tutorial by Derek Banas](https://www.newthinktank.com/2015/02/ruby-programming-tutorial/): used in the video

## VS Code extensions

References:

- [Ruby in Visual Studio Code](https://code.visualstudio.com/docs/languages/ruby)
  - It recommends using [rbenv](https://github.com/rbenv/rbenv) → [rbenv installation](https://github.com/rbenv/rbenv#installation)

It's as simple as searching for **ruby** within **VS Code**:

- [Ruby → Shopify.ruby-extensions-pack](https://marketplace.visualstudio.com/items?itemName=Shopify.ruby-extensions-pack): An opinionated and auto-configured set of extensions for Ruby development → it's an extension pack with 2 extensions
  - [Ruby LSP → Shopify.ruby-lsp](https://marketplace.visualstudio.com/items?itemName=Shopify.ruby-lsp): VS Code plugin for connecting with the Ruby LSP. The Ruby LSP is an implementation of the [language server protocol](https://microsoft.github.io/language-server-protocol/) for Ruby, used to improve rich features in editors.
  - [Ruby Sorbet → sorbet.sorbet-vscode-extension](https://marketplace.visualstudio.com/items?itemName=sorbet.sorbet-vscode-extension): Ruby IDE features, powered by [Sorbet](https://sorbet.org/).

My choice: I'll install **Ruby** to get **Ruby LSP** and **Ruby Sorbet** installed

**Notice**: when enabled both **Spinel** and **Spinel Light** themes are suggested as they seem to work well with **Ruby**

### Tuning for Linux Mint 22.1

Provided that I'm using [Linux Mint 22.1](https://linuxmint.com/) and the current **Ruby** version is **3.2.3** I had to make the following tweaks to make **ruby-lsp** work.

**(1)** Install **ruby-dev** to be able to install **ruby-lsp**:

```
$ sudo apt install ruby-dev
$ gem install ruby-lsp
```

`gem install ruby-lsp` fails when **ruby-dev** is not available.

**(2)** Provide a **bundle** command since **bundle3.2** is the only available on **Linux Mint 22.1**:

```
$ cat ~/.bashrc
(...)
export GEM_HOME="${HOME}/lib/ruby"
PATH="${GEM_HOME}/bin:${PATH}"
(...)

$ ln -s /usr/bin/bundle3.2 $GEM_HOME/bin/bundle
```

With the previous tweaks **ruby-lsp** is able to start:

```
$ ruby-lsp
ruby-lsp
Ruby LSP> Skipping lockfile copies because there's no top level bundle
Ruby LSP> Running bundle install for the composed bundle. This may take a while...
Ruby LSP> Command: ((bundle check && bundle update ruby-lsp debug) || bundle install) 1>&2
The Gemfile's dependencies are satisfied
(...)
```

## Ruby environment managers

I get the following details in **VS Code → Output → Ruby LSP** window:

```
2025-06-22 11:11:54.444 [info] (ruby-walkthrough) Checking if chruby is available on the path with command: /bin/bash -i -c 'chruby --version'
2025-06-22 11:11:55.468 [info] (ruby-walkthrough) Checking if rbenv is available on the path with command: /bin/bash -i -c 'rbenv --version'
2025-06-22 11:11:56.491 [info] (ruby-walkthrough) Checking if rvm is available on the path with command: /bin/bash -i -c 'rvm --version'
2025-06-22 11:11:57.512 [info] (ruby-walkthrough) Checking if asdf is available on the path with command: /bin/bash -i -c 'asdf --version'
2025-06-22 11:11:58.534 [info] (ruby-walkthrough) Discovered version manager none
(...)
```

References:

- [chruby 2.9k :star:](https://github.com/postmodern/chruby): Changes the current Ruby
- [rbenv 16.4k :star:](https://github.com/rbenv/rbenv): Manage your app's Ruby environment
  - The one recomended by [Ruby in Visual Studio Code](https://code.visualstudio.com/docs/languages/ruby)
- [rvm](https://rvm.io/): Ruby Version Manager
- [asdf 699 :star:](https://github.com/asdf-vm/asdf-ruby): Ruby plugin for asdf version manager
  - [asdfThe Multiple Runtime Version Manager](https://asdf-vm.com/): Manage all your runtime versions with one tool!
    - [asdf on GitHub 23.8k :star:](https://github.com/asdf-vm/asdf)

**rbenv** includes a detailed [Comparison of version managers](https://github.com/rbenv/rbenv/wiki/Comparison-of-version-managers): rbenv, chruby, direnv, asdf, rtx, frum, RVM and Containerized architecture

## irb: interactive Ruby

**irb** integrated help is very useful:

- irb: start the interactive Ruby session (REPL)
- tab / shift-tab: show the help window and move up and down
- alt + d: show a full document with help

Example for **ARGV** (full document would be shown on **Alt+d**):

```
$ irb
irb(main):001:0> ARGF
                 !                     Press Alt+d to read the full document
                 !=                    ARGF < Object
                 !~
                 <=>                   ----------------------------------------
                 ==                    Includes:
                 ===                   Enumerable (from ruby core)
                 ARGF
                 ARGV ················ (from ruby core)
                 ArgumentError         ----------------------------------------
                 Array                 ARGF is a stream designed for use in
                 BEGIN                 scripts that process files given as
                 BasicObject           command-line arguments or passed in via
                 Binding               STDIN.
                 CGI
                 CROSS_COMPILING       The arguments passed to your script are
                                       stored in the ARGV Array, one
                                       argument per element. ARGF assumes that
                                       any arguments that aren't filenames have
                                       been removed from ARGV. For
                                       example:
```
