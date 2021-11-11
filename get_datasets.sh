#!/bin/bash

DIR_DATOS=datos
DIR_MINEDUC=mineduc

download_data()
{
    FOLDER=$DIR_DATOS/$3
    FILENAME=$2
    URL=$1

    mkdir -p $FOLDER
    wget -O $FOLDER/$FILENAME $URL
}

# Rendimiento escolar en Chile
download_data http://datos.mineduc.cl/datasets/195396-resumen-rendimiento-ano-2020.download/ 2020.csv $DIR_MINEDUC/resumen_rendimiento

# NEM
download_data http://datos.mineduc.cl/datasets/195848-nem-y-percentil-jovenes-ano-2020.download/ jovenes_2020.csv $DIR_MINEDUC/NEM/

# Rendimiento académico
download_data http://datos.mineduc.cl/datasets/195065-rendimiento-escolar-ano-2020.download/ 2020.zip $DIR_MINEDUC/rendimiento_escolar

# Prueba de transición
download_data http://datos.mineduc.cl/datasets/196340-prueba-de-transicion-universitaria-2021-inscritos-puntajes.download/ inscritos_2021.csv $DIR_MINEDUC/PDT
