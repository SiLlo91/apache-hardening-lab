
```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejemplo Vulnerable a XSS</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }
        .container {
            margin-top: 50px;
        }
        input, button {
            padding: 8px;
            margin: 5px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Buscador de Productos</h1>
        <p>Este es un ejemplo de formulario vulnerable a XSS (Cross-Site Scripting).</p>
        
        <form action="#" method="GET">
            <label for="busqueda">Ingrese su búsqueda:</label><br>
            <input type="text" id="busqueda" name="q" placeholder="Escriba aquí...">
            <button type="submit">Buscar</button>
        </form>

        <div id="resultados">
            <h2>Resultados para:
                <script>
                    // Obtener el parámetro de la URL
                    const urlParams = new URLSearchParams(window.location.search);
                    const query = urlParams.get('q');

                    // Mostrar directamente sin sanitizar (VULNERABLE)
                    if(query) {
                        document.write(query);
                    }
                </script>
            </h2>
            <p>Contenido de los resultados aparecería aquí...</p>
        </div>

        <div style="margin-top: 50px; color: #666; font-size: 0.9em;">
            <p><strong>Nota:</strong> Esta página es solo para fines educativos y demuestra una vulnerabilidad de seguridad.</p>
            <p>Ejemplo de prueba XSS:
                <code>&lt;script&gt;alert('XSS')&lt;/script&gt;</code>
            </p>
        </div>
    </div>
</body>
</html>
```