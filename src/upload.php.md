```php
<?php  
// Directorio donde se guardarán los archivos subidos  
$uploadDir = 'uploads/';  
  
// Crear el directorio si no existe  
if (!is_dir($uploadDir)) {  
    mkdir($uploadDir, 0755, true);  
}  
  
$allowedExtensions = ['jpg', 'jpeg', 'png', 'gif', 'pdf', 'txt', 'docx'];  
  
// Comprobar si se ha subido un archivo  
if ($_SERVER['REQUEST_METHOD'] === 'POST') {  
    if (isset($_FILES['file']) && $_FILES['file']['error'] === UPLOAD_ERR_OK) {  
         
        $fileTmpPath = $_FILES['file']['tmp_name'];  
        $fileName = $_FILES['file']['name'];  
        $fileSize = $_FILES['file']['size'];  
        $fileExtension = strtolower(pathinfo($fileName, PATHINFO_EXTENSION));  
         
        $destination = $uploadDir . basename($fileName);  

        if (!in_array($fileExtension, $allowedExtensions)) {  
            echo "Error: Archivos con extensión .$fileExtension no están permitidos.";  
            exit;  
        }  

 // Validar el tamaño del archivo (máximo de 5 MB)  
        if ($fileSize > 5 * 1024 * 1024) {  
            echo "Error: El archivo es demasiado grande. Máximo 5 MB permitidos.";  
            exit;  
        }  
  
 // Mover el archivo al directorio de destino  
        if (move_uploaded_file($fileTmpPath, $destination)) {  
            echo "¡Archivo subido correctamente! <a href='index.php'>Volver</a>";  
        } else {  
            echo "Hubo un error al mover el archivo. Inténtalo de nuevo.";  
        }  
  
    } else {  
        echo "No se subió ningún archivo o hubo un error en la subida.";  
    }  
}  
?>
```