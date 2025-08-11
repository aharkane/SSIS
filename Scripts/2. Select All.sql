--use AdvWrk
--go

--truncate table test.products
--go
--truncate table stg.products
--go

--truncate table stg.temp
--go


use AdvWrk
go

select * from test.products
go

select * from stg.products
go

select * from stg.temp
go



select count(*)
from stg.products