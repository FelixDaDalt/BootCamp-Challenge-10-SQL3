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