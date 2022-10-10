---
title: run macro when value change
tags: [Reference]
---

- #### Use VBA’s `Worksheet_Change()` function to run code when specific cell changed in the specific worksheet
	- sample code per below
		```vb
		Private Sub Worksheet_Change(ByVal Target As Range)
			If Target.Address = "$A$1" Then
				Call Mymacro
			End If
		End Sub
		```
	- this will run the code when the specific cell changes (in this case cell A1)
	- remove the `If Target.Address ...` if you want any cell changes to trigger the code run
- Additional Notes
	- Worksheet_Change event procedure
		- triggers whenever any cell in the worksheet is changed.
		- accepts Target (the Range object) as parameter to monitor only specific cell(s)
		- more resource optimium than _SelectionChange
	- Worksheet_SelectionChange event procedure
		- triggers when any cell is selected.
		- accepts Target as parameter
- #### We can use anchor named range and the apply pseudo offset using `.Columns()` function to copy specific column in a named range
	- use the following code
		```vb
		Range("namedrange1").Columns(colnum).Copy
		```

## References
- https://www.extendoffice.com/documents/excel/4423-excel-run-macro-on-cell-change.html

## Metadata
- topic:: [[00 Coding]]
- updated:: [[2022-10-05]]
- reviewed:: [[2022-10-05]]
- #Reference 