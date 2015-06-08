dim ColumnHeaders
ColumnHeaders = Array("Travel","Exercise","BeiberRespect","Confidence","Spirituality","Extroversion","CatLove","Drinker","Sleeper","SamHater")

dim ColumnMetaHeaders
ColumnMetaHeaders = Array("Traveler","Exercise","Beileber","Confidence","Spirituality","Extroversion","AnimalPreference","Drinker","Sleeper","SamOpinion")

dim ColumnModifiers
ColumnModifiers = Array("Light","Average","Heavy")

data_row = 2
data_column = 2

fill_row = 1
fill_column = 2


Set objExcel = CreateObject("Excel.Application") 
objExcel.Visible = True     
	set workbook_data = objExcel.Workbooks.Open("C:\Users\Cody\Desktop\Data_mining_w_pollitt\data\data.xlsx") 
	set workbook_fill = objExcel.Workbooks.Open("C:\Users\Cody\Desktop\Data_mining_w_pollitt\data\Employees.xlsx") 


for i = 0 to ubound(ColumnHeaders)
	for j = 0 to ubound(ColumnModifiers)
		objExcel.Cells(fill_row,fill_column) = ColumnModifiers(j) & ColumnHeaders(i)
		objExcel.Cells(fill_row+1,fill_column) = ColumnMetaHeaders(i)
		fill_column = fill_column + 1
	next
next

fill_row = 3
fill_column = 2

workbook_data.Activate

Do Until objExcel.Cells(data_row-1,data_column).Value = ""
	x = 2

	Do Until objExcel.Cells(data_row,x) = ""
		
		Select Case objExcel.Cells(data_row,data_column)
		  Case 1
		    add_column = 0
		  Case 2
		    add_column = 0
		  Case 3
		    add_column = 1
		  Case 4
		    add_column = 1
		  Case 5
		    add_column = 1
		  Case 6
		    add_column = 2
		  Case else
		    add_column = 2
		End Select

		wscript.Echo objExcel.Cells(data_row,data_column)

		workbook_fill.Activate

		for i = fill_column to fill_column + 3
			if i - fill_column = add_column then
				objExcel.Cells(fill_row,i) = 1
			else
				objExcel.Cells(fill_row,i) = 0
			end if
		next		

		fill_column = fill_column + 3
		x = x + 1
		workbook_data.Activate
	Loop

	fill_column = 2
	data_row = data_row + 1
	fill_row = fill_row + 1
Loop


Wscript.echo "Done"



