use AdvWrk
go

drop table if exists test.products
go

CREATE TABLE test.products (
    [ProductID] smallint,
    [ProductName] varchar(32),
    [SupplierID] smallint,
    [CategoryID] smallint,
    [QuantityPerUnit] varchar(20),
    [UnitPrice] real,
    [UnitsInStock] smallint,
    [UnitsOnOrder] smallint,
    [ReorderLevel] smallint,
    [Discontinued] bit,
	[IsCurrent] bit
)
go

alter table test.products
alter column [SupplierID] smallint


--------------------------------------------
use AdvWrk
go

drop table if exists stg.products
go

CREATE TABLE stg.products (
    [ProductID] smallint,
    [ProductName] varchar(32),
    [SupplierID] smallint,
    [CategoryID] smallint,
    [QuantityPerUnit] varchar(20),
    [UnitPrice] real,
    [UnitsInStock] smallint,
    [UnitsOnOrder] smallint,
    [ReorderLevel] smallint,
    [Discontinued] bit,
	[IsCurrent] bit
)