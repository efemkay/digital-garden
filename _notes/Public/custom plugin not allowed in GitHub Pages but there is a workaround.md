---
title: custom plugin not allowed in GitHub Pages but there is a workaround
tags: [Reference]
---

- #### GitHub pages doesn’t allow custom plugin for security reasons, as such I cannot manually load regex_replace or markdown_highlight
	- alternative to this is to deploy using Netlify
	- there’s a repo that help with jekyll deploy action, but I haven’t explore that
- #### For my markdown highlight issue, I will resort to [[replace == with mark for jekyll liquid]]

## References
- [Jekyll custom hook in `_plugins` folder is not executed - Stack Overflow](https://stackoverflow.com/questions/73506937/jekyll-custom-hook-in-plugins-folder-is-not-executed)
- [ruby - Jekyll: How to use custom plugins with GitHub pages? - Stack Overflow](https://stackoverflow.com/questions/53215356/jekyll-how-to-use-custom-plugins-with-github-pages)
- [jeffreytse/jekyll-deploy-action: 🪂 A Github Action to deploy the Jekyll site conveniently for GitHub Pages.](https://github.com/jeffreytse/jekyll-deploy-action)

## Metadata
- topic:: [[00 Coding]]
- updated:: [[2022-09-18]]
- reviewed:: [[2022-09-18]]
- #Reference 
