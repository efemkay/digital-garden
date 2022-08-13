---
title: add mermaid to github pages
---

- #### using cdn to load mermaid js, we need to load the write the initialisation script after the body section
	- else it won’t properly load

here’s the code
```html
<!DOCTYPE html>
<html lang="en">

<head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mermaid/8.0.0/mermaid.min.js"></script>
</head>

<body>
    <pre><code class="language-mermaid">graph LR
        A--&gt;B
    </code></pre>
    <div class="mermaid">
        graph LR
        A--&gt;C
    </div>
</body>

<script>
    var config = {
        startOnLoad:true,
        theme: 'default',
        flowchart:{
                useMaxWidth:false,
                htmlLabels:true
            }
    };
    mermaid.initialize(config);
    window.mermaid.init(undefined, document.querySelectorAll('.language-mermaid'));
</script>

</html>
```

## References
- [javascript - How to make GitHub Pages Markdown support mermaid diagram? - Stack Overflow](https://stackoverflow.com/questions/53883747/how-to-make-github-pages-markdown-support-mermaid-diagram)
- [mermaid/theming.md at develop · mermaid-js/mermaid (github.com)](https://github.com/mermaid-js/mermaid/blob/develop/docs/theming.md)

## Metadata
- topic:: [[00 Coding]]
- updated:: [[2022-08-12]]
- reviewed:: [[2022-08-12]]
- #Reference 
