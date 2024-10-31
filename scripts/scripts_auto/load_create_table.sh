#!/bin/bash

# Configura el entorno de codificación
export LANG=C.UTF-8

# Configura las variables de conexión
export PGHOST="localhost"
export PGPORT="5432"
export PGUSER="adminzoo"
export PGPASSWORD="david23"
export PGDATABASE="zoologico"

# Ejecuta el archivo SQL
echo "Ejecutando TableDefinitions.sql..."
psql -h "$PGHOST" -p "$PGPORT" -U "$PGUSER" -d "$PGDATABASE" -f "/home/david/Downloads/src/Git/Github/1034777054-UP_DavidOrlandoHernandez/BDI-GB-ZOO/scripts/ddl/create_tables.sql"
# Verifica si el comando anterior tuvo éxito
if [ $? -ne 0 ]; then
    echo "Error ejecutando TableDefinitions.sql"
    exit 1
fi
echo "Script ejecutado correctamente."

