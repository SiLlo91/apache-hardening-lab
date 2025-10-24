
**1. Prevención de Listado de Directorios**

Se ha creado un fichero `.htaccess` dentro de la carpeta `/uploads` con la siguiente directiva para prohibir explícitamente el listado de su contenido:

```apache
# Deshabilitar el listado de ficheros en este directorio
Options -Indexes
```
