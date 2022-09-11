
```dataviewjs
const fields = {}
Object.values(app.metadataCache.metadataCache)
	.forEach(x => Object.keys(x.frontmatter || {})
	.forEach(y => fields[y] = true))
	
dv.list(Object.keys(fields))
```

---

```dataviewjs
const fields = {}
Object.values(app.metadataCache.metadataCache)
	.forEach(x => Object.keys(x.frontmatter || {})
	.filter(x => x !== 'position')
	.forEach(x => fields[x] = -~fields[x]))

dv.header(3, 'YAML fields')
dv.list(Object.keys(fields)
	.sort((a, b) => fields[b] - fields[a])
	.map(x => `${x} (${fields[x]} notes)`))
```
## References
- [How can I get a list of all the yaml fields I have defined over time (similar to tags list)? - Help - Obsidian Forum](https://forum.obsidian.md/t/how-can-i-get-a-list-of-all-the-yaml-fields-i-have-defined-over-time-similar-to-tags-list/42391/2)
	- where I get the dataview code to run the above