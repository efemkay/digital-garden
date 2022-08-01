- ### Use Case
	- when running economic model, sometimes I would need to run analysis of a group of projects incremental to another group of projects (normally existing/producing)
	- this macro allow for semi automated selection of projects based on table of projects similar to table below

| Selection | Project Name | Cons Level |
|:----------|:-------------|:-----------|
| TRUE      | Existing A   |          0 |
| TRUE      | Existing B   |          0 |
| FALSE     | Sanction A   |          1 |
| FALSE     | Sanction B   |          1 |
| FALSE     | Notional     |          2 |  

```vb
Public Sub ChangeProjSel()

Dim r As Range
Dim ConSel As Range
Dim ProjCons As Range
Dim ColOffset As Integer

Set ConSel = Range("$I$2")
Set ProjCons = Range("I6:I15")

'set the offset for column from Project Cons to the selection
ColOffset = -2

    'loop for every cell in the Project Cons range
    For Each r In ProjCons
        If r.Value <= ConSel.Value Then
            r.Offset(0, ColOffset).Value = 1
        Else
            r.Offset(0, ColOffset).Value = 0
        End If
    Next

End Sub
```

## Metadata
- topic:: [[00 Coding]]
	- related:: [[Excel]], [[VBA]]
- updated:: [[2022-08-01]]
- reviewed:: [[2022-08-01]]
- #Reference 
