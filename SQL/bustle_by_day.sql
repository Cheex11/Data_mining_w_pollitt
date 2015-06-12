use go

--2015 EVERYONE ACTIVE
SELECT 
convert(varchar, bustle_date, 110),
count(bustleid)
from bustle b
	join callmeasurement.dbo.leuseradmin lua 
		on b.frn_guserid = lua.leuseradminid 
where bustle_date > '20150101'
	and lua.isactive = 'yes'
group by convert(varchar, bustle_date, 110)
order by convert(varchar, bustle_date, 110)

--ONLY PEOPLE BEFORE 20150101
SELECT 
convert(varchar, bustle_date, 110),
count(bustleid)
from bustle b
	join callmeasurement.dbo.leuseradmin lua 
		on b.frn_guserid = lua.leuseradminid 
where bustle_date > '20150101'
	and lua.isactive = 'yes'
	and lua.start_date < '20150101'
group by convert(varchar, bustle_date, 110)
order by convert(varchar, bustle_date, 110)



--2014
SELECT 
convert(varchar, bustle_date, 110),
count(bustleid)
from bustle b
	join callmeasurement.dbo.leuseradmin lua 
		on b.frn_guserid = lua.leuseradminid 
where bustle_date > '20140101'
	and bustle_date < '20140611'
group by convert(varchar, bustle_date, 110)
order by convert(varchar, bustle_date, 110)

--2013
SELECT 
convert(varchar, bustle_date, 110),
count(bustleid)
from bustle b
	join callmeasurement.dbo.leuseradmin lua 
		on b.frn_guserid = lua.leuseradminid 
where bustle_date > '20130101'
	and bustle_date < '20130611'
	and lua.isactive = 'yes'
	and lua.start_date < '20130415'
group by convert(varchar, bustle_date, 110)
order by convert(varchar, bustle_date, 110)