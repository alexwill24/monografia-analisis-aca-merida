cat("# Análisis de Agendas Concretas de Acción (ACA)


### 📋 Descripción
Análisis estadístico y territorial de proyectos comunitarios del Estado Mérida (2019-2025).

### 🔧 Reproducir este Análisis

#### Método 1: Con renv (Recomendado - Automático)
1. Clonar/descargar este proyecto
2. Abrir el archivo `.Rproj` en RStudio
3. renv se activará automáticamente
4. Ejecutar en la consola:
```r
renv::restore()
```
5. Abrir `Capitulo 4 Resultados interactivos.Rmd`
6. Click en 'Knit' para generar el reporte

#### Método 2: Sin renv (Manual)
1. Consultar `session_info.txt` para ver versiones de paquetes
2. Instalar paquetes manualmente
3. Abrir el .Rmd y Knit

### 📦 Requisitos del Sistema
- **R Version:** 4.5.0 o superior
- **RStudio:** 2023.06.0 o superior
- **Sistema Operativo:** Windows/Mac/Linux
- **Espacio en disco:** ~2GB para paquetes

### 📁 Estructura del Proyecto
```
├── renv.lock              # Versiones exactas de paquetes
├── renv/                  # Biblioteca del proyecto
├── datos/                 # Datos fuente
├── *.Rmd                  # Análisis en R Markdown
├── session_info.txt       # Documentación del entorno
└── README.md              # Este archivo
```

### 👤 Autor
**William A. Gutiérrez V.**  
Fecha: $(format(Sys.Date(), '%B %Y'))

### 📄 Licencia
[Especificar licencia si aplica]

### 🆘 Soporte
Si encuentras problemas al reproducir el análisis:
1. Verifica que tu versión de R sea compatible
2. Ejecuta `renv::status()` para diagnosticar problemas
3. Ejecuta `renv::restore()` para sincronizar paquetes

---
*Generado automáticamente con renv el $(format(Sys.Date(), '%d/%m/%Y'))*
", file = "README.md")

cat("\n✅ Archivo 'README.md' creado exitosamente\n")
