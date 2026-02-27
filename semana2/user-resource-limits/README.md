# User Resource Limits

## Objetivo

Limitar los recursos que puede utilizar o generar un usuario en específico.

## Procedimiento

1. Editamos el archivo /etc/security/limits.conf y configuramos límites para `nproc` (número máximo de procesos) y `as` (memoria virtual en KB).
2. Habilitamos el módulo pam_limits.so en el archivo /etc/pam.d/common-session para que se
aplique en la mayoría de servicios.

## Detalles

- El hard limit es fundamental ya que solo puede ser modificado por el usuario root,
mientras que el soft limit puede ser modificado dentro de ese rango por el mismo
usuario afectado.
- Los límites funcionarán cuando se realice un login en los servicios que utilizan
el archivo /etc/pam.d/common-session, por lo tanto, no funcionará al realizar un simple
"su dev1".

