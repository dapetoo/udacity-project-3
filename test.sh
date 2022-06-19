#!/bin/sh
SUCCESS=$(curl --insecure  https://kvdb.io/EUAJuVP5WS2Xs3i5N5Tsp4/migration_8dd08)
# Logic for reverting the database state
if $SUCCESS == 1
    echo "Migration unsuccessful"
then
    echo "Migration was successful"
fi 
