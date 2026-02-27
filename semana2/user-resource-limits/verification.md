# Verificación

## Script generador de procesos
Ejecutamos un programa en bash que genere un poco más del límite establecido y que vivan durante un tiempo limitado (sleep) para estudiar el correcto funcionamiento de los límites establecidos para el usuario dev1.
```bash
for i in {1..60}; do sleep 100 & done
```

## Comando
Utilizamos el comando básico ps para listar los procesos del usuario.

## Resultados
Tras ejecutar ps, observamos que existen un poco menos de 50 procesos ejecutando sleep dado que el usuario tiene otros procesos más bajo su nombre.