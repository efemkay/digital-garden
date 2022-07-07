---
title: run macro when value change
---

- #### Metadata
	- topic:: [[00 Coding]]
	- updated:: [[2022-01-29]]
	- reviewed:: [[2022-01-29]]
	- #CodeNote 
---
- for specific worksheet you want the code to run, add the following code into the sheet's vba window
	```vb
	Private Sub Worksheet_Change(ByVal Target As Range)
		If Target.Address = "$A$1" Then
			Call Mymacro
		End If
	End Sub
	```
- this will run the code when the specific cell changes (in this case cell A1)
- remove the `If Target.Address ...` if you want any cell changes to trigger the code run
- Worksheet_Change event procedure
	- triggers whenever any cell in the worksheet is changed.
	- accepts Target (the Range object) as parameter to monitor only specific cell(s)
	- more resource optimium than _SelectionChange
- Worksheet_SelectionChange event procedure
	- triggers when any cell is selected.
	- accepts Target as parameter
- Copy specific column in a named range
	- use the following code
		```vb
		Range("namedrange1").Columns(colnum).Copy
		```

## References
- https://www.extendoffice.com/documents/excel/4423-excel-run-macro-on-cell-change.html