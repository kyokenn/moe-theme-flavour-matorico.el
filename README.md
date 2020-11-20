Emacs - Moe theme (dark) - Matorico flavour
===========================================

**Matorico flavour** for [Moe theme](https://github.com/kuanyui/moe-theme.el) (dark version)

Based on:
* Material colors
* Emacs Orico theme (inspired by Original Coding) by <nikolay@blohin.org>

This is not a complete standalone theme, but an addon to existing Emacs theme,
which customizes syntax highlighting colors, adds operators faces and fixes some bugs.

Requirements
------------

* [Moe theme](https://github.com/kuanyui/moe-theme.el)
* [Powerline](http://github.com/milkypostman/powerline/) (not required, but recommended)

Installation
------------

```
;; setup moe theme
(add-to-list 'load-path "~/.emacs.d/moe-theme.el/")
(require 'moe-theme)

;; set powerline color
(moe-theme-random-color)       ;; set random
(moe-theme-apply-color 'blue)  ;; or preferred

;; setup moe theme addon
(add-to-list 'load-path "~/.emacs.d/moe-theme-flavour-matorico.el/")
(require 'moe-theme-flavour-matorico)
(moe-theme-flavour-matorico)
```
