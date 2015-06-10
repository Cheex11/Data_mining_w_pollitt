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
				objExcel.Cells(fill_row,fill_column).Value = "No"
			Case 2 
				objExcel.Cells(fill_row,fill_column).Value = "No"
			Case 3
				objExcel.Cells(fill_row,fill_column).Value = "Neutral"
			Case 4
				objExcel.Cells(fill_row,fill_column).Value = "Neutral"
			Case 5
				objExcel.Cells(fill_row,fill_column).Value = "No"
			Case 6
				objExcel.Cells(fill_row,fill_column).Value = "Yes"
			Case 7
				objExcel.Cells(fill_row,fill_column).Value = "Yes"
			Case else
		End Select

		fill_row = fill_row + 1
	Loop
	fill_column = fill_column + 1
	fill_row = 2
Loop


fill_row=2
fill_column=13

Do Until objExcel.Cells(fill_row,fill_column).Value = ""
	Do Until objExcel.Cells(fill_row,fill_column).Value = ""


		if objExcel.Cells(fill_row,fill_column).Value < 3 then
			objExcel.Cells(fill_row,fill_column).Value = "<3"

		elseif objExcel.Cells(fill_row,fill_column).Value < 6 then
			objExcel.Cells(fill_row,fill_column).Value2 = "3-6hoop"

		elseif objExcel.Cells(fill_row,fill_column).Value < 12 then
			objExcel.Cells(fill_row,fill_column).Value2 = "6-12hoop"

		elseif objExcel.Cells(fill_row,fill_column).Value < 24 then
			objExcel.Cells(fill_row,fill_column).Value2 = "12-24hoop"

		elseif objExcel.Cells(fill_row,fill_column).Value < 48 then
			objExcel.Cells(fill_row,fill_column).Value2 = "24-48hoop"

		else 
			objExcel.Cells(fill_row,fill_column).Value2 = "48+"
		end if
		fill_row = fill_row + 1
	Loop
Loop


fill_row=2
fill_column=14

Do Until objExcel.Cells(fill_row,fill_column).Value = ""
	Do Until objExcel.Cells(fill_row,fill_column).Value = ""

		if objExcel.Cells(fill_row,fill_column).Value < 75 then
			objExcel.Cells(fill_row,fill_column).Value2 = "<75"

		elseif objExcel.Cells(fill_row,fill_column).Value < 150 then
			objExcel.Cells(fill_row,fill_column).Value2 = "75 - 150"

		elseif objExcel.Cells(fill_row,fill_column).Value < 300 then
			objExcel.Cells(fill_row,fill_column).Value2 = "150 - 300"

		elseif objExcel.Cells(fill_row,fill_column).Value < 450 then
			objExcel.Cells(fill_row,fill_column).Value2 = "300 - 450"

		elseif objExcel.Cells(fill_row,fill_column).Value < 600 then
			objExcel.Cells(fill_row,fill_column).Value2 = "450 - 600"

		else 
			objExcel.Cells(fill_row,fill_column).Value2 = "600+"
		end if
		fill_row = fill_row + 1
	Loop
Loop


