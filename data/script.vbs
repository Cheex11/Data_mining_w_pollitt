dim ColumnHeaders
ColumnHeaders = Array("Travel","Exercise","BeiberRespect","Confidence","Spirituality","Extroversion","CatLove","Drinker","Sleeper","SamHater")

dim ColumnMetaHeaders
ColumnMetaHeaders = Array("Traveler","Exercise","Beileber","Confidence","Spirituality","Extroversion","AnimalPreference","Drinker","Sleeper","SamOpinion")

dim ColumnModifiers
ColumnModifiers = Array("No","Light","Moderate","Maximum")



Set objExcel = CreateObject("Excel.Application") 
objExcel.Visible = True     
	set workbook_data = objExcel.Workbooks.Open("C:\Users\Cody\Desktop\Data_mining_w_pollitt\data\data.xlsx") 
	set workbook_fill = objExcel.Workbooks.Open("C:\Users\Cody\Desktop\Data_mining_w_pollitt\data\Employees.xlsx") 


