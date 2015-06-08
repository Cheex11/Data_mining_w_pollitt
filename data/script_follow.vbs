
Set objExcel = CreateObject("Excel.Application") 
objExcel.Visible = True     
	set workbook_data = objExcel.Workbooks.Open("C:\Users\Cody\Desktop\Data_mining_w_pollitt\data\data2.xlsx") 
	set workbook_fill = objExcel.Workbooks.Open("C:\Users\Cody\Desktop\Data_mining_w_pollitt\data\Employees.xlsx") 

fill_row=1
fill_column=2



Do Until objExcel.Cells(fill_row,fill_column-1).Value = ""
	fill_column = fill_column + 1
Loop

'At this point, fill_column will be the first empty column.


data_Row = 1
data_column = 2
dim ColumnOptions


dim ColumnHeaders
ColumnMetaHeaders = Array("Gender","Team","Tshirt")

workbook_data.Activate

Do Until objExcel.Cells(data_Row,data_column).Value = ""
	Select Case objExcel.Cells(data_Row,data_column)
		  Case "gender"
		  	possible_columns = 2
		  	ColumnMetaHeader = "gender"
			ColumnOptions = Array("Male","Female")
		  Case "team"
		  	possible_columns = 7
		  	ColumnMetaHeader = "Team"
			ColumnOptions = Array("Biz Dev","Accounts","Operations","Engineering","Marketing","Partner","Product")
		  Case "tshirt"
		  	possible_columns = 6
		  	ColumnMetaHeader = "Tshirt"
			ColumnOptions = Array("Xsmall","Small","Medium","Large","Xlarge","Xxlarge")
		  Case else
		    possible_columns = 0
		    Wscript.echo("I shouldn't be here")
		    Wscript.echo objExcel.Cells(data_Row,data_column)
	End Select

	

	workbook_fill.Activate

	for this_column = 0 to possible_columns -1 
		for this_row = 1 to 3
			if this_row = 1 then
				objExcel.Cells(fill_row,fill_column+this_column) = ColumnOptions(this_column)
			elseif this_row = 2 then
				objExcel.Cells(this_row,fill_column+this_column) = ColumnMetaHeader
			end if	
		next


		workbook_data.Activate

		loop_row = 2
		Do Until objExcel.Cells(loop_row,data_column).Value = ""
			If ColumnOptions(this_column) = objExcel.Cells(loop_row,data_column).Value then
				this_cell = 1
			else 
				this_cell = 0
			End if
				
			workbook_fill.Activate
			objExcel.Cells(loop_row+1,fill_column+this_column) = this_cell
			loop_row = loop_row + 1
			workbook_data.Activate
		Loop
			workbook_fill.Activate
	next		





	workbook_data.Activate
	fill_column = fill_column + possible_columns
	data_column = data_column + 1
Loop

Wscript.echo("I am done")