#!/bin/bash

DIR_DATOS=datos
DIR_MINEDUC=mineduc

download_data()
{
    FOLDER=$DIR_DATOS/$3
    FILENAME=$2
    URL=$1

    if [ ! -f $FOLDER/$FILENAME ]
    then
        mkdir -p $FOLDER
        wget -O $FOLDER/$FILENAME $URL
    fi
}

# Rendimiento escolar en Chile
#download_data http://datos.mineduc.cl/datasets/195396-resumen-rendimiento-ano-2020.download/ 2020.csv $DIR_MINEDUC/resumen_rendimiento

# NEM
#download_data http://datos.mineduc.cl/datasets/195848-nem-y-percentil-jovenes-ano-2020.download/ jovenes_2020.csv $DIR_MINEDUC/NEM/

# Rendimiento académico
#download_data http://datos.mineduc.cl/datasets/195065-rendimiento-escolar-ano-2020.download/ 2020.zip $DIR_MINEDUC/rendimiento_escolar

# Prueba de transición

# puntajes
download_data http://datos.mineduc.cl/datasets/196340-prueba-de-transicion-universitaria-2021-inscritos-puntajes.download/ puntajes_2021.csv $DIR_MINEDUC/PDT

# matricula
download_data http://datos.mineduc.cl/datasets/196349-prueba-de-transicion-universitaria-2021-matricula.download/ matricula_2021.csv $DIR_MINEDUC/PDT

# selección regular
download_data http://datos.mineduc.cl/datasets/196341-prueba-de-transicion-universitaria-2021-postulantes-seleccion-regular.download/ seleccion_regular_2021.csv $DIR_MINEDUC/PDT

# cupos supernumerarios
download_data http://datos.mineduc.cl/datasets/196343-prueba-de-transicion-universitaria-2021-postulantes-cupos-supernumerarios.download/ cupos_super_2021.csv $DIR_MINEDUC/PDT

# cupos PACE
download_data http://datos.mineduc.cl/datasets/196344-prueba-de-transicion-universitaria-2021-postulantes-cupos-pace.download/ cupos_pace_2021.csv $DIR_MINEDUC/PDT
