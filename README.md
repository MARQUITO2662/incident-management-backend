
reguister
http://localhost:3000/api/auth/register
{
  "nombre": "rozana vilchez julca",
  "email": "roxana.vilchesssj@example.com",
  "password": "password12345",
  "piso": "7",
  "apartamento": "C",
  "rol": "administrador",
   "telefono": "998771225" 
}
{
  "nombre": "marco lopez",
  "email": "marquito2662@example.com",
  "password": "password123456",
  "piso": "9",
  "apartamento": "D",
  "rol": "residente",
   "telefono": "998771290
}




Login 
http://localhost:3000/api/auth/login

{
  
  "email": "roxana.vilchesssj@example.com",
  "password": "password12345"
  
}

{
  
  "email": "marquito2662@example.com",
  "password": "password123456"
   
}  RESIDENTE 


ACA  HE PUESTO MI ERD 
Usuarios
+------------------+
| id (PK)          |
| nombre           |
| email            |
| password         |
| rol              |
| telefono         |
| piso             |
| apartamento      |
+------------------+

     1
     |
     | (id_usuario)
     |
     N

Incidencia
+------------------------+
| id (PK)                |
| asunto                 |
| tipo                   |
| descripcion            |
| imagen                 |
| estado                 |
| fecha_de_creacion      |
| fecha_de_actualizacion |
| id_usuario (FK)        |
+------------------------+
