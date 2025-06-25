# ruby-walkthrough

It's been a while since I first learned **Ruby**. Now I want to use it again so I'm creating this project to use for learning and for future reference.

## Initial reference

[Ruby Programming by Derek Banas](https://www.youtube.com/watch?v=Dji9ALCgfpM): even though it's a 2015 video it's fast, cuts to the chase and it's clutter-free.

> [Ruby Programming Tutorial by Derek Banas](https://www.newthinktank.com/2015/02/ruby-programming-tutorial/): the code used in the video

## GEM_HOME and PATH setup

It's where the **gems** are going to be locally installed:
```
$ cat ~/.bashrc
(...)
export GEM_HOME="${HOME}/lib/ruby"
PATH="${GEM_HOME}/bin:${PATH}"
(...)
```

## bundler

On **Linux Mint 22.1** with **GEM_HOME=~/lib/ruby**:
```
$ dpkg -S /usr/lib/ruby/3.2.0/bundler
libruby3.2:amd64: /usr/lib/ruby/3.2.0/bundler

$ which bundle bundler bundle3.2 bundler3.2
bundle not found
bundler not found
/bin/bundle3.2
/bin/bundler3.2
```
My home:
```
$ ls ~/lib/ruby
ls: cannot access '/home/sfm/lib/ruby': No such file or directory

$ gem list -l | wc -l
91

$ gem list -l | grep ^bundler
bundler (default: 2.4.19)
```
bundler upgrade (install to **GEM_HOME=~/lib/ruby**):
```
$ gem install bundler
Fetching bundler-2.6.9.gem
Successfully installed bundler-2.6.9
Parsing documentation for bundler-2.6.9
Installing ri documentation for bundler-2.6.9
Done installing documentation for bundler after 0 seconds
1 gem installed

$ gem list -l | wc -l
91

$ gem list -l | grep ^bundler
bundler (2.6.9, default: 2.4.19)

$ ls -l ~/lib/ruby/bin
total 8
-rwxr-xr-x 1 sfm sfm 563 Jun 25 18:18 bundle
-rwxr-xr-x 1 sfm sfm 565 Jun 25 18:18 bundler

$ which bundle bundler bundle3.2 bundler3.2
/home/sfm/lib/ruby/bin/bundle
/home/sfm/lib/ruby/bin/bundler
/bin/bundle3.2
/bin/bundler3.2
```
From [https://bundler.io/](https://bundler.io/):
- **Gemfile**:
```
source 'https://rubygems.org'
gem 'nokogiri'
gem 'rack', '~> 2.2.4'
gem 'rspec'
```
- Install gems defined by **Gemfile**:
```
$ bundle install
$ git add Gemfile Gemfile.lock
```

## ruby-lsp
```
$ sudo apt install ruby-dev

$ gem install ruby-lsp
(...)
Successfully installed sorbet-runtime-0.5.12201
(...)
Successfully installed rbs-3.9.4
(...)
Successfully installed prism-1.4.0
Successfully installed language_server-protocol-3.17.0.5
Successfully installed ruby-lsp-0.24.2
(...)
5 gems installed
```
`gem install ruby-lsp` fails when **ruby-dev** is not available.

Result (just **bin**):
```
$ ls -l ~/lib/ruby/bin
total 28
-rwxr-xr-x 1 sfm sfm 563 Jun 25 18:18 bundle
-rwxr-xr-x 1 sfm sfm 565 Jun 25 18:18 bundler
-rwxr-xr-x 1 sfm sfm 524 Jun 25 18:25 rbs
-rwxr-xr-x 1 sfm sfm 554 Jun 25 18:26 ruby-lsp
-rwxr-xr-x 1 sfm sfm 566 Jun 25 18:26 ruby-lsp-check
-rwxr-xr-x 1 sfm sfm 572 Jun 25 18:26 ruby-lsp-launcher
-rwxr-xr-x 1 sfm sfm 574 Jun 25 18:26 ruby-lsp-test-exec
```
Command line execution:
```
$ ruby-lsp
Ruby LSP> Skipping lockfile copies because there's no top level bundle
Ruby LSP> Running bundle install for the composed bundle. This may take a while...
Ruby LSP> Command: ((bundle check && bundle update ruby-lsp debug) || bundle install) 1>&2
The following gems are missing
 * sorbet-runtime (0.5.12196)
Install missing gems with `bundle install`
Fetching gem metadata from https://rubygems.org/..........
Fetching sorbet-runtime 0.5.12196
Installing sorbet-runtime 0.5.12196
Bundle complete! 2 Gemfile dependencies, 11 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
(...)
```

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
