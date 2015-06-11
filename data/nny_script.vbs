Const xlTextFormat = 2

Set objExcel = CreateObject("Excel.Application")
objExcel.Visible = True

objExcel.Workbooks.OpenText "C:\Users\Cody\Desktop\Data_mining_w_pollitt\data\Employees.csv",,,,,,,,True,,,, _
    Array(Array(1, xlTextFormat), Array(2, xlTextFormat), Array(3, xlTextFormat))





fill_row=2
fill_column=2



Do Until objExcel.Cells(fill_row,fill_column).Value = "Medium"
	Do Until objExcel.Cells(fill_row,fill_column).Value = ""
		Select Case objExcel.Cells(fill_row,fill_column).Value
			Case 1 
				objExcel.Cells(fill_row,fill_column).Value = "1"
			Case 2 
				objExcel.Cells(fill_row,fill_column).Value = "1"
			Case 3
				objExcel.Cells(fill_row,fill_column).Value = "3"
			Case 4
				objExcel.Cells(fill_row,fill_column).Value = "3"
			Case 5
				objExcel.Cells(fill_row,fill_column).Value = "3"
			Case 6
				objExcel.Cells(fill_row,fill_column).Value = "7"
			Case 7
				objExcel.Cells(fill_row,fill_column).Value = "7"
			Case else
		End Select

		fill_row = fill_row + 1
	Loop
	fill_column = fill_column + 1
	fill_row = 2
Loop
