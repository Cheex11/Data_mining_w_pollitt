use go

select top 20 * from bproject_comment



select top 200 * from bproject 
where owned_by = 1
order by created_date desc



select 
datename(m,bustle_date)+' '+cast(datepart(d,bustle_date) as varchar) as DayMonth,
count(bustleid)
from bustle b
	join callmeasurement.dbo.leuseradmin lua 
		on b.frn_guserid = lua.leuseradminid 
where bustle_date > '20150101'
	and lua.isactive = 'yes'
	and lua.start_date < '20150415'
group by datename(m,bustle_date)+' '+cast(datepart(d,bustle_date) as varchar)
order by datename(m,bustle_date)+' '+cast(datepart(d,bustle_date) as varchar)



select 
datename(m,bustle_date)+' '+cast(datepart(d,bustle_date) as varchar) as DayMonth,
count(bustleid)
from bustle b
	join callmeasurement.dbo.leuseradmin lua 
		on b.frn_guserid = lua.leuseradminid 
where bustle_date > '20140101'
	and bustle_date < '20140610'
	and lua.isactive = 'yes'
	and lua.start_date < '20150415'
group by datename(m,bustle_date)+' '+cast(datepart(d,bustle_date) as varchar)
order by datename(m,bustle_date)+' '+cast(datepart(d,bustle_date) as varchar)





select top 1 * from callmeasurement.dbo.leuseradmin


select top 1 * from bustle


select count(bustleid) as bustle,
datepart(month,bustle_date)
from bustle
where bustle_date < '20150602'
group by datepart(month,bustle_date)
order by datepart(month,bustle_date)