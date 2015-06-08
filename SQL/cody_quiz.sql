select * from sandbox_dev.dbo.cody_quiz

--insert into cody_dm
select frn_adminid, adminname,'tbd',team,5555,tshirt,start_date,question1,question2,question3,question4,question5,question6,question7,question8,question9,question10
from sandbox_dev.dbo.cody_quiz q1
inner join callmeasurement.dbo.leuseradmin on frn_adminid = leuseradminid
where id > 86


CREATE TABLE cody_dm
(
ID int IDENTITY(1,1) PRIMARY KEY,
frn_adminid int,
Adminname varchar(255) NOT NULL,
Gender varchar(255),
Team varchar(255),
ZIP int,
tshirt varchar(255),
start_date date,
question1 int,
question2 int,
question3 int,
question4 int,
question5 int,
question6 int,
question7 int,
question8 int,
question9 int,
question10 int
)



update cody_dm 
set gender = 'male'
where frn_adminid in (144,5,59,161,282,211,233,284,117,32,301,195,329,341,333,256,251,231,76,273,259,39,31,325,330,279,248,303,278,96,275,137,302,155,106,264,150,324,287,197)

update cody_dm 
set gender = 'Female'
where frn_adminid in (select frn_adminid from cody_dm where gender = 'Female')

select * from cody_dm 


update cody_dm 
set gender = 'male'
where frn_adminid in (144,5,59,161,282,211,233,284,117,32,301,195,329,341,333,256,251,231,76,273,259,39,31,325,330,279,248,303,278,96,275,137,302,155,106,264,150,324,287,197)


update cody_dm 
set gender = 'Female'
where frn_adminid in (select frn_adminid from cody_dm where gender = 'Female')






select adminname,gender,team,tshirt from cody_dm

select distinct tshirt,count(frn_adminid) from cody_dm group by tshirt

select distinct team from cody_dm

 select * from callmeasurement.dbo.leuseradmin



update cody_dm
set team = 'Accounts'
where frn_adminid = 162


select * from cody_dm where tshirt = 'w-xsmall'

update cody_dm 
set tshirt = 'Xxlarge'
where frn_adminid in
	(select frn_adminid from cody_dm where tshirt in ('xxlarge'))



select leuseradminid, website_profile_title from callmeasurement.dbo.leuseradmin


update cody_dm
set team = 
	(
		select lu.website_profile_title
		from callmeasurement.dbo.leuseradmin lu
		WHERE cody_dm.frn_adminid = lu.leuseradminid
	)



select * 
from callmeasurement.dbo.leuseradmin 


select adminname,datediff(m,start_date,getdate()),count(bustleid) as bustle,  count(bustleid) / datediff(m,start_date,getdate()) as avg_bustle
from cody_dm cdm
	inner join go.dbo.bustle b on cdm.frn_adminid = b.frn_guserid
where datediff(m,start_date,getdate()) > 0
group by adminname,datediff(m,start_date,getdate())
order by bustle desc


