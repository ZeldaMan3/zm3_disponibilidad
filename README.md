
# zm3_disponibilidad


## Preview

https://streamable.com/fb68ja

## Dependencias

ESX Legacy: https://github.com/esx-framework 

Ox_Lib: https://github.com/overextended/ox_lib



## Instalación

- Descarga el repositorio y coloca la carpeta zm3_disponibilidad en tu carpeta Resources

- Luego inicia el script en el server.cfg

```cfg
  ensure zm3_disponibilidad
```
    
## Comandos
Para actualizar tu estado a disponible:
```bash
/disponible
```
Para actualizar tu estado a ocupado:
```bash
/ocupado
```
 Para mostrar la disponibilidad (Solo el trabajo police pueden mandar la disponibilidad)
```bash
/mostrardispo
```









## FAQ

#### ¿Cuando me pongo como disponible/ocupado, la notificacion es global?

No, solamente lo ve el que realizo el comando /disponible o /ocupado.

#### ¿La disponibilidad total de policias es global?

Si, la notificacion que muestra la cantidad de policias disponibles es global pero solamente la puede anunciar la policia.

#### ¿Porque chucha hiciste este script?

Porque en cada server que he jugado siempre webean con un script que muestre la cantidad de policias disponibles para robar.

#### ¿Tienes un TODO?

Si:

- Crear un archivo config para poder cambiar el job.
- Multijob.
- Que la disponibilidad la pueda mandar la gente del servidor para consultar de la misma (Es facil, cambia el codigo)
- Crear un HUD para que la disponibilidad siempre se muestre en pantalla.


