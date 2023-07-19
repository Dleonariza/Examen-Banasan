select v.nombre, e.nombre, sum(o.qty) as recaudo from vendedores as v
inner join ordenes as o
on v.idvendedores = o.idvendedores
inner join empresas as e
on o.idempresas = e.idempresas
group by v.idvendedores, e.nombre
order by recaudo desc

