-- if there is a change in ProductName: PN_old <> PN_new and UP_old = UP_new then update PN_old with PD_new
-- if there is change in UnitPrice UP_old <> UP_new then update set Icurrent_old = 0 and Insert a new row with PN_New,
-- UP_New and otherColumns_old
use AdvWrk
go

drop table if exists stg.temp 
go 

with UpdatProducts as (
select
	t.ProductID 
	,case 
		when t.ProductID = s.ProductID and t.UnitPrice = s.UnitPrice 
			and t.ProductName <> s.ProductName and s.ProductName is not null 
		then s.ProductName
		else t.ProductName 
	end as ProductName
	,t.SupplierID
	,t.CategoryID
	,t.QuantityPerUnit
	,t.UnitPrice
	,t.UnitsInStock
	,t.UnitsOnOrder
	,t.ReorderLevel
	,t.Discontinued
	, Case 
		When t.ProductID = s.ProductID and t.UnitPrice <> s.UnitPrice and s.UnitPrice is not null 
		then 0
		else 1 
	end as IsCurrent 
from test.products t left join stg.products s
on t.ProductID = s.ProductID and t.IsCurrent = 1
union all
select distinct
	t.ProductID 
	,s.ProductName 
	,t.SupplierID
	,t.CategoryID
	,t.QuantityPerUnit
	,s.UnitPrice
	,t.UnitsInStock
	,t.UnitsOnOrder
	,t.ReorderLevel
	,t.Discontinued
	,s.IsCurrent 

from test.products t inner join stg.products s
on t.ProductID = s.ProductID and t.IsCurrent = 1
where s.ProductID is not null
)
 select distinct * into stg.temp from UpdatProducts
go 

truncate table test.products
go

insert into test.products select distinct * from stg.temp 
go

select*  from test.products