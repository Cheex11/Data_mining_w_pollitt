select * from sandbox_dev.dbo.cody_quiz
select * from sandbox_dev.dbo.cody_dm

--insert into sandbox_dev.dbo.cody_dm
select frn_adminid, adminname,'tbd',team,5555,tshirt,start_date,question1,question2,question3,question4,question5,question6,question7,question8,question9,question10
from sandbox_dev.dbo.cody_quiz q1
inner join callmeasurement.dbo.leuseradmin on frn_adminid = leuseradminid
where id > 99 


--update sandbox_dev.dbo.cody_dm
set tshirt = 'Small'
where id in (select id from sandbox_dev.dbo.cody_dm where tshirt in ('m-small','w-small'))

update sandbox_dev.dbo.cody_dm
set tshirt = 'Medium'
where id in (select id from sandbox_dev.dbo.cody_dm where tshirt in ('m-medium','w-medium'))

update sandbox_dev.dbo.cody_dm
set tshirt = 'Large'
where id in (select id from sandbox_dev.dbo.cody_dm where tshirt in ('m-large','w-large'))

update sandbox_dev.dbo.cody_dm
set tshirt = 'XLarge'
where id in (select id from sandbox_dev.dbo.cody_dm where tshirt in ('m-xlarge','w-xlarge'))

update cody_dm 
set tshirt = 'Xxlarge'
where frn_adminid in (select frn_adminid from cody_dm where tshirt in ('xxlarge'))


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
set gender = 'Female'
where frn_adminid in (144,5,59,161,282,211,233,284,117,32,301,195,329,341,333,256,251,231,76,273,259,39,31,325,330,279,248,303,278,96,275,137,302,155,106,264,150,324,287,197)


select frn_adminid, adminname, gender from cody_dm

select * from sandbox_dev.dbo.cody_dm



update cody_dm
set team = 
	(
		select lu.website_profile_title
		from callmeasurement.dbo.leuseradmin lu
		WHERE cody_dm.frn_adminid = lu.leuseradminid
	)
where id > 85




select adminname,gender,team,tshirt from sandbox_dev.dbo.cody_dm 

select distinct tshirt,count(frn_adminid) from cody_dm group by tshirt

select distinct team from cody_dm

 select * from callmeasurement.dbo.leuseradmin



update cody_dm
set team = 'Accounts'
where frn_adminid = 162


select leuseradminid, website_profile_title from callmeasurement.dbo.leuseradmin


alter table cody_dm
add average_bustle float

alter table cody_dm
add tenure float


select * from sandbox_dev.dbo.cody_dm

select * 
from callmeasurement.dbo.leuseradmin 


select adminname,datediff(m,start_date,getdate()) as tenure,count(bustleid) as bustle_total,  count(bustleid) / datediff(m,start_date,getdate()) as avg_bustle
from cody_dm cdm
	inner join go.dbo.bustle b on cdm.frn_adminid = b.frn_guserid
where datediff(m,start_date,getdate()) > 0
group by adminname,datediff(m,start_date,getdate())
order by bustle_total desc



update sandbox_dev.dbo.cody_dm
set average_bustle =
(
select count(bustleid) / datediff(m,start_date,getdate()) as avg_bustle
from cody_dm cdm
	inner join go.dbo.bustle b on cdm.frn_adminid = b.frn_guserid
where datediff(m,start_date,getdate()) > 0
	and sandbox_dev.dbo.cody_dm.frn_adminid = b.frn_guserid
group by datediff(m,start_date,getdate())
)

update sandbox_dev.dbo.cody_dm
set tenure =
(
select datediff(m,start_date,getdate()) as tenure
from cody_dm cdm
	inner join go.dbo.bustle b on cdm.frn_adminid = b.frn_guserid
where datediff(m,start_date,getdate()) > 0
	and sandbox_dev.dbo.cody_dm.frn_adminid = b.frn_guserid
group by datediff(m,start_date,getdate())
)



update sandbox_dev.dbo.cody_dm
set tenure = 0
where tenure is null


update sandbox_dev.dbo.cody_dm
set average_bustle = 
(select count(bustleid)
	from  go.dbo.bustle
	where sandbox_dev.dbo.cody_dm.frn_adminid = go.dbo.bustle.frn_guserid
 )
 where sandbox_dev.dbo.cody_dm.average_bustle = 767968


 select * from sandbox_dev.dbo.cody_dm

 select count(bustleid) 
 from go.dbo.bustle b 
	inner join sandbox_dev.dbo.cody_dm dm on b.frn_guserid = dm.frn_adminid
where average_bustle is 
 group by b.frn_guserid