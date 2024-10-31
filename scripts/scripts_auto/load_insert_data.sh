#!/bin/bash

# Configura el entorno de codificación
export LANG=C.UTF-8

# Configura las variables de conexión
export PGHOST="localhost"
export PGPORT="5432"
export PGUSER="adminzoo"
export PGPASSWORD="david23"
export PGDATABASE="zoologico"

# Ejecuta cada archivo SQL en orden

echo "Ejecutando 01_tablas_independientes.sql..."
psql -h "$PGHOST" -p "$PGPORT" -U "$PGUSER" -d "$PGDATABASE" -f "/home/david/Downloads/src/Git/Github/1034777054-UP_DavidOrlandoHernandez/BDI-GB-ZOO/scripts/dml/insert/01_tablas_independientes.sql"
if [ $? -ne 0 ]; then
    echo "Error ejecutando 01_tablas_independientes.sql"
    exit 1
fi

echo "Ejecutando 02_habitat.sql..."
psql -h "$PGHOST" -p "$PGPORT" -U "$PGUSER" -d "$PGDATABASE" -f "/home/david/Downloads/src/Git/Github/1034777054-UP_DavidOrlandoHernandez/BDI-GB-ZOO/scripts/dml/insert/02_habitat.sql"
if [ $? -ne 0 ]; then
    echo "Error ejecutando 02_habitat.sql"
    exit 1
fi

echo "Ejecutando 03_especies.sql..."
psql -h "$PGHOST" -p "$PGPORT" -U "$PGUSER" -d "$PGDATABASE" -f "/home/david/Downloads/src/Git/Github/1034777054-UP_DavidOrlandoHernandez/BDI-GB-ZOO/scripts/dml/insert/03_especies.sql"
if [ $? -ne 0 ]; then
    echo "Error ejecutando 03_especies.sql"
    exit 1
fi

echo "Ejecutando 04_habitat_visitantes.sql..."
psql -h "$PGHOST" -p "$PGPORT" -U "$PGUSER" -d "$PGDATABASE" -f "/home/david/Downloads/src/Git/Github/1034777054-UP_DavidOrlandoHernandez/BDI-GB-ZOO/scripts/dml/insert/04_habitat_visitantes.sql"
if [ $? -ne 0 ]; then
    echo "Error ejecutando 04_habitat_visitantes.sql"
    exit 1
fi

echo "Ejecutando 05_cuidador.sql..."
psql -h "$PGHOST" -p "$PGPORT" -U "$PGUSER" -d "$PGDATABASE" -f "/home/david/Downloads/src/Git/Github/1034777054-UP_DavidOrlandoHernandez/BDI-GB-ZOO/scripts/dml/insert/05_cuidador.sql"
if [ $? -ne 0 ]; then
    echo "Error ejecutando 05_cuidador.sql"
    exit 1
fi

echo "Ejecutando 06_animales.sql..."
psql -h "$PGHOST" -p "$PGPORT" -U "$PGUSER" -d "$PGDATABASE" -f "/home/david/Downloads/src/Git/Github/1034777054-UP_DavidOrlandoHernandez/BDI-GB-ZOO/scripts/dml/insert/06_animales.sql"
if [ $? -ne 0 ]; then
    echo "Error ejecutando 06_animales.sql"
    exit 1
fi

echo "Todos los scripts SQL se ejecutaron correctamente."

