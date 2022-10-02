
````md
```query
block: (searchterm)
```
````

```css
/* === Internal Query (might touch on NIL's as well) === */

	/* adjustment for query search results */
	.internal-query { display: grid; grid-template-columns: 1fr 1fr; border-bottom: 1px solid var(--background-modifier-border); }
	.internal-query .internal-query-header { font-weight: bold; color: var(--h5-color); padding: var(--size-4-2); }
	.internal-query .nav-header { grid-column: 2/3; justify-self: end;}
	.internal-query .search-result-container { grid-column: 1/3; border: unset; background-color: unset;}
```

