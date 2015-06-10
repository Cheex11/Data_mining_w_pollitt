use go


select count(bproject_commentid) as comment_total,adminname
from bproject_comment bpc
inner join callmeasurement.dbo.leuseradmin la on bpc.comment_by = la.leuseradminid
and bpc.comment_datecreated > '2015'
group by adminname 
order by comment_total desc

select count(pproject_commentid) as comment_total,adminname
from pproject_comment pc
inner join callmeasurement.dbo.leuseradmin la on pc.comment_by = la.leuseradminid
and pc.comment_datecreated > '2015'
group by adminname 
order by comment_total desc

select count(hproject_commentid) as comment_total,adminname
from hproject_comment hc
inner join callmeasurement.dbo.leuseradmin la on hc.comment_by = la.leuseradminid
and hc.comment_datecreated > '2015'
group by adminname 
order by comment_total desc

select count(oproject_commentid) as comment_total,adminname
from oproject_comment oc
inner join callmeasurement.dbo.leuseradmin la on oc.comment_by = la.leuseradminid
and oc.comment_datecreated > '2015'
group by adminname 
order by comment_total desc


select count(bustleid) as bustle,
datepart(month,bustle_date)
from bustle
where bustle_date < '20150602'
group by datepart(month,bustle_date)
order by datepart(month,bustle_date)

--Full month and year
select count(bustleid) as bustle,
datename(m,bustle_date)+' '+cast(datepart(yyyy,bustle_date) as varchar) as MonthYear
from bustle
where bustle_date < '20150601'
group by datename(m,bustle_date)+' '+cast(datepart(yyyy,bustle_date) as varchar)
order by bustle

--Month and year in order for BUSTLE
select count(bustleid) as bustle,
convert(varchar(7), bustle_date, 126) 
from bustle
where bustle_date < '20150601'
group by convert(varchar(7), bustle_date, 126) 
order by convert(varchar(7), bustle_date, 126) 


--Accounts by start date
select lskinstartdate, count(lskinid)
from callmeasurement.dbo.lskinproperty lp
	inner join callmeasurement.dbo.lskin l on lp.frn_lskinid = l.lskinid
where l.isactive = 1
group by lskinstartdate
order by count(lskinid) desc


--Minutes for new customers from May
select lskinstartdate, refname, sum(xl.leminutes)
from callmeasurement.dbo.lskinproperty lp
	inner join callmeasurement.dbo.lskin l on lp.frn_lskinid = l.lskinid
	inner join callmeasurement.dbo.dnis d on l.lskinid = d.add_lskinid
	inner join callmeasurement.dbo.xcall_long xl on xl.cf_frn_dnisid = d.dnisid
where l.isactive = 1
	and lskinstartdate = '20150504'
	and xl.tz_date < '20150601'
group by lskinstartdate, refname

--Minutes for new customers from 01-18-2011
select lskinstartdate, refname, sum(xl.leminutes)
from callmeasurement.dbo.lskinproperty lp
	inner join callmeasurement.dbo.lskin l on lp.frn_lskinid = l.lskinid
	inner join callmeasurement.dbo.dnis d on l.lskinid = d.add_lskinid
	inner join callmeasurement.dbo.xcall_long xl on xl.cf_frn_dnisid = d.dnisid
where l.isactive = 1
	and lskinstartdate = '20110118'
	and xl.tz_date < '20150601'
group by lskinstartdate, refname

--Minutes for new customers from 2014-03-26
select lskinstartdate, refname, sum(xl.leminutes)
from callmeasurement.dbo.lskinproperty lp
	inner join callmeasurement.dbo.lskin l on lp.frn_lskinid = l.lskinid
	inner join callmeasurement.dbo.dnis d on l.lskinid = d.add_lskinid
	inner join callmeasurement.dbo.xcall_long xl on xl.cf_frn_dnisid = d.dnisid
where l.isactive = 1
	and lskinstartdate = '2014-03-26'
	and xl.tz_date < '20150601'
group by lskinstartdate, refname

select lskinstartdate, count(lskinid)
from callmeasurement.dbo.lskinproperty lp
	inner join callmeasurement.dbo.lskin l on lp.frn_lskinid = l.lskinid
where l.isactive = 1
group by lskinstartdate
order by count(lskinid) desc


select * from 


select * from cody_dm