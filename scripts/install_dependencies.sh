#!/bin/bash
==================================================================
#############################################################
#                                                           #    
#       FASE 1: INSTALACIÓN BASE (Sin Firewall)             #
#                                                           #
############################################################# 
#Autor: SiLlo
#Objetivo: Automatizar la instalación de Apache y la configuración
#de un directorio personalizado.
==================================================================

# Si un comando falla, el script se detiene.
set -e

# --- 1. ACTUALIZACIÓN DEL SISTEMA ---
echo "Actualizando los paquetes del sistema."
sudo apt-get update && sudo apt-get upgrade -y

# --- 2. INSTALACIÓN DE APACHE2 ---
echo "INFO: Instalando el servidor web Apache2."
sudo apt-get install apache2 -y

# --- 3. CREACIÓN DE DIRECTORIO WEB PERSONALIZADO ---
echo "Creando el directorio /var/www/mi-proyecto-web." #Puedes cambiar el nombre mi-proyecto-web por otro. 
sudo mkdir -p /var/www/mi-proyecto-web

echo "INFO: Creando un fichero index.html de bienvenida y comprobación"
echo "<h1>Hito 1: Servidor web funcionando</h1>" | sudo tee /var/www/mi-proyecto-web/index.html

# --- 4. ASIGNACIÓN DE PERMISOS ---
echo "Asignando la propiedad del directorio a www-data..."
sudo chown -R www-data:www-data /var/www/mi-proyecto-web

echo " FASE 1 completada. El servidor base está listo."

