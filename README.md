# Análisis Cuantitativo de las Agendas Concretas de Acción: Mérida (2019-2025)

**Autor:** William Alexander Gutiérrez Varela  
**Monografía para optar al título de Economista, Universidad de Los Andes, Venezuela.** **Fecha:** Agosto 2025

---

## Descripción del Proyecto

Este repositorio contiene el código fuente, los datos y los resultados generados para la monografía titulada: "Correlación entre nudos críticos y proyectos en las Agendas Concretas de Acción: Un análisis cuantitativo de la planificación comunal en Mérida (2019-2025)".

El objetivo de este trabajo es aplicar un modelo cuantitativo para evaluar la efectividad de las ACA en la resolución de nudos críticos, utilizando herramientas como el índice de Shannon, la correlación de Spearman y el Análisis de Componentes Principales.

## Contenido del Repositorio

-   **/codigo:** Contiene el script principal de R Markdown (`Investigacion_ACA_Merida.Rmd`) con todo el proceso de análisis, desde la limpieza de datos hasta la generación de gráficos y tablas.
-   **/datos:** Incluye la base de datos principal (`ACA_Modelaje_R_Final.xlsx`) y los `shapefiles` necesarios para el análisis territorial.
-   **/resultados:** Almacena una selección de los gráficos y tablas más relevantes generados por el script.

## ¿Cómo utilizar este código?

Para reproducir el análisis, se requiere R y RStudio. Es necesario instalar las siguientes librerías:

```r
# Lista de librerías utilizadas
install.packages(c("readxl", "dplyr", "writexl", "vegan", "permute", "fastDummies", "ggplot2", "scales", "AER", "sf", "tidyr", "viridis", "knitr", "data.table", "carData", "stringr", "purrr", "cowplot", "GGally", "ggspatial", "ggpubr", "nortest", "gridExtra", "tibble", "reshape2", "kableExtra", "formattable", "DT", "corrplot", "ggridges", "treemapify", "RColorBrewer", "ggrepel", "igraph", "ggraph", "ggdendro", "patchwork", "pheatmap", "grid", "cluster", "mclust", "factoextra", "car", "MASS", "broom", "ggeffects", "margins", "tmap", "sp", "conflicted", "biscale"))
```

Una vez instaladas las librerías, se puede ejecutar el archivo `Investigacion_ACA_Merida.Rmd` en la carpeta `/codigo`. El script está diseñado para leer los archivos de la carpeta `/datos` de forma relativa.
