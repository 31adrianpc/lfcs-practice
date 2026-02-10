# File Audit

## Escenario
Revisión rápida de seguridad y mantenimiento antes de una auditoría

## Objetivo
Generar un reporte de archivos potencialmente problemáticos relacionados a permisos, tamaño y presencia de archivos sensibles

## Comandos utilizados
- find: Permite buscar archivos bajo diferentes criterios y de manera recursiva.
- find -perm 777: Archivos con permisos excesivos
- find -size +1M: Archivos grandes
- find -name "passwords.txt" -o -name "secrets.txt": Archivos sensibles
