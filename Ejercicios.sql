use Aticulos_Informaticos
GO

/*Ejercicio 1*/
 Select * from Producto

/*Ejercicio 2*/
select Producto.Nombre, Producto.Precio from Producto

/*Ejercicio 3*/
Select Producto.Nombre from Producto where Producto.Precio <= 200

/*Ejercicio 4*/
Select Producto.Nombre from Producto where Producto.Precio Between 60 and 120 

/*Ejercicio 5*/
Select Producto.Nombre, Producto.Precio*100 from Producto

/*Ejercicio 6*/
Select sum(Producto.Precio)/COUNT(Producto.id) from Producto 
/* O */
Select AVG(Producto.Precio) from Producto

/*Ejercicio 7*/
Select AVG(Producto.Precio) from Producto where ProveedorId = 2

/*Ejercicio 8*/
Select COUNT(Producto.Id) as Cantidad from Producto where Precio >= 180

/*Ejercicio 9*/
select Producto.Nombre, Producto.Precio from Producto where Precio >= 180 Order By Precio Desc
select Producto.Nombre, Producto.Precio from Producto where Precio >= 180 Order By Precio Asc

/*Ejercicio 10*/
Select * from Producto P join Proveedor Pr ON P.ProveedorId = Pr.Id

/*Ejercicio 11*/
Select P.Nombre, P.Precio, Pr.Nombre from Producto P join Proveedor Pr ON P.ProveedorId = Pr.Id

/*Ejercicio 12*/
Select AVG(P.precio),Pr.Id from Producto P join Proveedor Pr
ON P.ProveedorId = Pr.Id
Group by P.ProveedorId, Pr.Id

/*Ejercicio 13*/
Select AVG(P.precio),Pr.Nombre from Producto P join Proveedor Pr
ON P.ProveedorId = Pr.Id
Group by P.ProveedorId, Pr.Nombre

/*Ejercicio 14*/
Select AVG(P.precio),Pr.Nombre 
from Producto P join Proveedor Pr
ON P.ProveedorId = Pr.Id
Group by P.ProveedorId, Pr.Nombre
HAVING AVG(P.precio) >= 150

/*Ejercicio 15*/
select top 1 Producto.Nombre, Producto.Precio from Producto
order by Precio Asc

/*Ejercicio 16*/
Select Proveedor.Nombre, Producto.Nombre, Producto.Precio
from Proveedor Join Producto
ON Proveedor.Id = Producto.Id
AND 
Producto.Precio = (Select MAX(Producto.precio) from producto where Proveedor.Id = Producto.Id)

/*Ejercicio 17*/
Select Proveedor.Nombre, Avg(Producto.Precio), count(Producto.ProveedorId)
from Proveedor, Producto
where Producto.ProveedorId = Proveedor.Id
Group by Proveedor.Nombre, Producto.ProveedorId
Having Avg(Producto.Precio) >= 145 and  count(Producto.ProveedorId) >= 2

/*Ejercicio 18*/
INSERT INTO Producto(Id,Nombre,Precio,ProveedorId) values (11,'Altavoces',70,2)

/*Ejercicio 19*/
UPDATE Producto set Nombre = 'Impresora laser' where Producto.Id = 8

/*Ejercicio 20*/
Update Producto set Precio = Precio-(Precio*0.10)

/*Ejercicio 21*/
Update Producto set Precio = Precio-(Precio*0.10) where precio >= 120

