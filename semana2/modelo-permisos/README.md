# Modelo de permisos

## Escenario
Administración de permisos sobre un servidor donde un auditor solo necesita permisos para leer un archivo del equipo de desarrolladores.

## Objetivo
Asignar los permisos mínimos necesarios para garantizar el trabajo seguro del auditor.

## Comandos utilizados
- groupadd: Crear grupos de desarrolladores y auditores.
- useradd: Crear usuarios dev y auditores.
- chown: Cambiar propietario sobre un archivo.
- chmod: Modificar los permisos sobre un archivo.
- setfacl: Asignar permisos ACL para extender la funcionalidad de permisos propia de Linux.

### Detalles técnicos
- Se utilizó el bit setgid para que los futuros archivos heredaran el grupo developers.
- Es necesario agregar permisos de ejecución sobre el directorio para que el auditor pueda ingresar al directorio y luego leer los archivos.
- Para que pueda escalar y el auditor pueda revisar los futuros archivos, se configuró un ACL por defecto (d:u:auditor1:r) sobre el directorio.