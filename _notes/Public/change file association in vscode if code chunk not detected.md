---
title: change file association in vscode if code chunk not detected
tags: [Reference]
---

- #### For first time setup for VS Code to run R Markdown, change the files association to enable it to run rmd file in code block chunks (like in R Studio)
	- Sometimes you may also need to do this after certain VS Code update. Possibly due to some settings being reset
	- ##### Steps
		- (Command Palette > Preferences: Open User Settings (JSON))
		- Text Editor > Files
		- change `"*.rmd": "markdown"` to `"*.rmd": "rmd"`
- #### If you’re aim to make VS Code behave quite similar to R Studio, you may interested to [[enable better R plotting in VSCode]]

> [!quote]- Stack Overflow post on how to fix
> I hope you resolved this by now, but just in case - I too had been happily using *.Rmd with VS Code, but not for a while, and the chunks were no longer recognised as R - or chunks.
> 
> I had been using [r-lsp](https://github.com/REditorSupport/vscode-r-lsp), which once flagged as deprecated, so I just got rid of it, in a gung-ho cull...
> 
> Now moving to [vscode-R](https://github.com/REditorSupport/vscode-R), I found I had to change the `files.associations` in VSCode's `settings.json` (Ctrl+Shift+P > Preferences: Open User Settings (JSON)) from the previous value:
> 
> ```json
>   "files.associations": {
>     "*.rmd": "markdown"
>   },
> ```
> 
> to
> 
> ```json
>   "files.associations": {
>     "*.Rmd": "rmd"
>   }
> ```
> 
> Maybe it was always wrong! Details in the vscode-R wiki, here, [https://github.com/REditorSupport/vscode-R/wiki/R-Markdown](https://github.com/REditorSupport/vscode-R/wiki/R-Markdown).

## References
- [visual studio code - rmarkdown not running chunks in vscode - Stack Overflow](https://stackoverflow.com/questions/71799170/rmarkdown-not-running-chunks-in-vscode)
- [R Markdown · REditorSupport/vscode-R Wiki (github.com)](https://github.com/REditorSupport/vscode-R/wiki/R-Markdown)

## Metadata
- topic:: [[00 Coding]]
	- related:: [[01 R programming]]
- created:: [[2022-09-05]]
- updated:: [[2023-01-15]]
- #Reference 
