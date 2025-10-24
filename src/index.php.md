```php
<!DOCTYPE html>  
<html lang="es">  
<head>  
    <meta charset="UTF-8">  
    <title>Panel de Subida de Archivos</title>  
    <style>  
        body { font-family: sans-serif; background-color: #f4f4f4; padding: 20px; }  
        .container { max-width: 500px; margin: auto; background: white; padding: 20px; border-radius: 5px; }  
    </style>  
</head>  
<body>  
  
<div class="container">  
    <h2>Subir un Archivo</h2>  
    <p>Archivos permitidos: jpg, jpeg, png, gif, pdf, txt, docx. Tamaño máximo: 5 MB.</p>  
     
    <form action="upload.php" method="post" enctype="multipart/form-data">  
        <label for="file">Selecciona un archivo:</label>  
        <input type="file" name="file" id="file" required>  
        <br><br>  
        <input type="submit" value="Subir Archivo">  
    </form>  
</div>  
  
</body>  
</html>
```