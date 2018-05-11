# ENVE Compliance study

## Versión 0.1

Estas instrucciones detallan brevemente el procedimiento necesario para correr exitosamente los scripts diseñados para el análisis de la ENVE 2014 en R.

La ejecución consta principalmente de dos partes, la Instalación de paquetes requeridos, y la Ejecución del script.

La instalación de paquetes solo se requiere realizar una vez. La ejecución del script puede realizarse las veces que sean necesarias si se encuentran errores.

# Instalación de paquetes requeridos

Los paquetes requeridos por este proyecto son los siguientes:

- `foreign`
- `classInt`
- `tidyverse`
- `glmmTMB`
- `RCurl`
- `victim`
- `knitr`
- `lmtest`
- `lazyeval`
- `car`
- `lme4`
- `devtools`
- `Cairo`

**Es recomendable contar con la [versión más actualizada de R](https://cran.r-project.org).**

**Para realizar la instalación de paquetes requeridos de forma automática ejecute:**

```{r}
source("package_installer.R")
```

Si prefiere realizar la instalación de forma manual, se puede verificar qué paquetes no se encuentran ya instalados con el siguiente comando:

```{r}
source("package_checker.R")
```

Para realizar la instalación manual de los paquetes faltantes, ejecute los comandos apropriados:

```{r}
### First, devtools:

if(!"devtools" %in% rownames(installed.packages()))
{
    install.packages("devtools")
}

# Next, install custom package "victim" from github

devtools::install_github("prestevez/victim")

## install the rest of the packages

instal.packages("foreign")
instal.packages("tidyverse")
instal.packages("Cairo")
instal.packages("knitr")
instal.packages("lme4")
instal.packages("lazyeval")
instal.packages("RCurl")
instal.packages("glmmTMB")
instal.packages("classInt")
instal.packages("foreign")
instal.packages("reshape2")
instal.packages("lmtest")
instal.packages("car")
```

# Ejecución del script

El proyecto está diseñado para requerir la menor intervención posible para su ejecución. Una vez puesto en marcha, el script generará los reportes y outputs relevantes en una carpeta para su posterior revisión y envío.

Además de la instalación de los paquetes necesarios, descrita en la sección anterior, la única intervención necesaria es colocar los archivos .dbf que contienen los datos de la ENVE en el folder del proyecto y asignar el working directory en R al folder del proyecto.

## Archivos .dbf ENVE 2014

El análisis utiliza ambas tablas de la ENVE, tanto del cuestionario principal como del módulo de delitos. Para poder ejecutar el script, es necesario copiar los archivos respectivos (`enve2014cuest_ciega_2014.dbf` y `enve2014delitos_ciega_2014.dbf`) al folder de este proyecto.

## Establecer working directory en R

Establezca el working directory en R para que apunte al folder del proyecto.

Por ejemplo:

```{r}
getwd() # Devuelve cuál es el working directory actual.

setwd("C:/R/ENVE_EstevezSoto") # Establece el working directory en el folder del proyecto

```

Sólo se requiere que el path al folder del proyecto sea especificado.

## Ejecutar el script

El proyecto está contenido en un archivo R Markdown que permite elaborar reportes automáticos de análisis realizados en R. Cuando el script termina, guarda los resultados en una archivo de texto con formato markdown (extensión .md) que puede ser abierto en cualquier editor de texto en cualquier computadora (Notepad, etc.).

Para correr el análisis, ejecute el siguiente comando en la consola de R:

```
knitr::knit("ECCA2018_extortion_report.Rmd")
```

La ejecución es tardada, pero depende del equipo en el que se corra; es normal que parezca que no hace nada.

# Resultados

El script automáticamente realizará los análisis requeridos y guardará los resultados en un archivo llamado ECCA2018_extortion_report.md en la carpeta del proyecto. Asimismo, el programa guardará en una subcarpeta llamada figure/ las gráficas elaboradas en el análisis. Tambié guardará un archivo .RData que aceleraría enormemente los análisis posteriores que tengan que realizarse para este proyecto.
