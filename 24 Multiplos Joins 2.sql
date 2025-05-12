
use ContosoRetailDW

select top 100
	s.SalesKey,
	s.SalesAmount,
	s.ProductKey,
	d.StoreName,
	dg.ContinentName,
	dg.StateProvinceName,
	dg.CityName
from FactSales as S
inner join DimStore as d on d.StoreKey = s.StoreKey
inner join DimGeography as dg on dg.GeographyKey = d.GeographyKey