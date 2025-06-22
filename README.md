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

### Tuning for Linux Mint

Provided that I'm using [Linux Mint](https://linuxmint.com/) and the current **Ruby** version is **3.0.2** I had to do the following to make **ruby-lsp** work.

**(1)** Install **ruby-dev** to be able to install **ruby-lsp**:

```
$ sudo apt install ruby-dev
$ gem install ruby-lsp
```

`gem install ruby-lsp` fails when **ruby-dev** is not available.

**(2)** Provide a **bundle** command since **bundle3.0** is the only available on **Linux Mint**:

```
$ cat ~/.bashrc
(...)
export GEM_HOME="${HOME}/lib/ruby"
PATH="${GEM_HOME}/bin:${PATH}"
(...)

$ ln -s /usr/bin/bundle3.0 $GEM_HOME/bin/bundle
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
