# org-hide-targets

Hide certain [emacs](https://www.gnu.org/software/emacs/) [org-mode](https://orgmode.org/) [targets](https://orgmode.org/manual/Internal-links.html) (`<<target>>`).

This code was originally adapted with the intention of annotating complex text. For example, linking pronouns in highly nested text to the objects that they refer to. For such use cases, having verbose visible labels would impede reading.

# Attribution

Taken from code provided by [Tobias](https://emacs.stackexchange.com/questions/19230/how-to-hide-targets/32292) in this answer on the [emacs stack exchange](https://emacs.stackexchange.com/questions/19230/how-to-hide-targets/32292). This code is distribued by an implied MIT license as stipulated by the [Stack Exchange contract](https://meta.stackexchange.com/questions/272956/a-new-code-license-the-mit-this-time-with-attribution-required).

# Usage

Clone this repository

```
cd ~
git clone org-hide-targets
```

Add the repository to your `load-path`, and `require` this.

```
(add-to-list 'load-path "~/org-hide-targets")
(require org-hide-target)
```

Toggle as required in org-mode files
```
M-x org-hide-targets-mode
```

To enable by default add to `org-mode-hook`.

```
(add-to-list 'org-mode-hook 'org-hide-targets-mode)
```

# License

This code is distributed under an [MIT license](LICENSE).

# See also

* [Emacs point registers](https://www.gnu.org/software/emacs/manual/html_node/emacs/Position-Registers.html) allows one to session-transiently save and jump to points in a file. These may be identified by single character identifiers. These may be [persisted across session by desktop.el](https://emacs.stackexchange.com/questions/16919/how-can-i-get-sessions-el-to-save-my-registers).
* [Emacs vim extension, evil mode](https://github.com/emacs-evil/evil) provides transient *marks* which are in most ways analogous to emacs point registers. Packages exist to [show these at the line level](https://github.com/Andrew-William-Smith/evil-fringe-mark)
in the [fringe](https://www.gnu.org/software/emacs/manual/html_node/emacs/Fringes.html) as well [as inline](https://github.com/roman/evil-visual-mark-mode). [These can also be persisted by desktop.el](https://github.com/emacs-evil/evil/issues/674)
* Bastian Bechtold's [annotate.el](https://github.com/bastibe/annotate.el) allows persistable annotations of arbitrary files without modifying underlying files.
* Jo Odland's [bm.el](https://github.com/joodland/bm) allows persistable bookmarks in arbitrary files without modifying the underlying file
* [A Generative Rhetoric of the Paragraph](https://doi.org/10.2307/355728), Francis Christensen  - describes what Tal Wrii would describe as a "tree model" of paragraph analysis. This [blog](http://bardiac.blogspot.com/2005/12/writing-basics-paragraph-analysis.html) discusses this method.
