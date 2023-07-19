select v.nombre from vendedores as v
inner join ordenes as o
on v.idvendedores = o.idvendedores
inner join empresas as e
on o.idempresas = e.idempresas
where e.nombre != 'Red' 
group by v.nombre