# Laboratorio de Hardening de Servidor Apache

Este proyecto documenta el proceso completo de instalación, configuración y securización de un servidor web Apache en un entorno Linux (Ubuntu), partiendo de un **aprovisionamiento inicial automatizado con Bash**.

El objetivo es aplicar un enfoque de **defensa en profundidad**, implementando múltiples capas de seguridad para proteger el servidor y las aplicaciones web alojadas en él.

---

## 🛡️ Medidas de Seguridad y Proceso

* **Aprovisionamiento Automatizado:** Se utilizó un script de Bash (`/scripts/script_de_instalacion_inicial`) para la instalación inicial del servidor, asegurando un despliegue rápido y consistente.
* **Web Application Firewall (WAF):** Despliegue de `mod_security` con el **OWASP Core Rule Set (CRS)** para la detección y bloqueo de ataques como XSS y SQL Injection.
* **Mitigación de Ataques de Fuerza Bruta/DoS:** Configuración de `mod_evasive` para bloquear automáticamente IPs con patrones de peticiones agresivas.
* **Securización de Subida de Archivos:** Implementación de un script PHP con validación estricta de extensiones (lista blanca) y tamaño máximo de fichero.
* **Prevención de Listado de Directorios:** Desactivación de `Indexes` mediante ficheros `.htaccess` para impedir la exposición de contenidos.
* **Control de Acceso:** Configuración de autenticación básica (`.htpasswd`) para proteger directorios.

---

## 💻 Tecnologías Utilizadas

* **SO:** Ubuntu.
* **Servidor Web:** Apache2
* **Lenguajes:** **Bash Scripting**, PHP
* **Módulos de Seguridad:** `mod_security` (WAF), `mod_evasive`, `mod_rewrite`
* **Herramientas:** Git, `dirb`, `curl`, `netplan`

---

## 📖 Documentación Completa

Para una guía detallada paso a paso de toda la implementación, incluyendo los comandos utilizados, las configuraciones y las pruebas de verificación, consulta el siguiente documento:

➡️ **[Manual de Instalación y Configuración](./docs/Guia_Instalacion/Gu%C3%ADa%20de%20instalaci%C3%B3n.md)**

---

## 📄 Agradecimientos y Fuente

Este proyecto se ha realizado siguiendo las prácticas y utilizando fragmentos de código propuestos en el curso "Gestión y Securización de Servidores Web" impartido por Mario (El Pingüino del Mario) en la plataforma El Bunker.
