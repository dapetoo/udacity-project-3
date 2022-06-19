#!/bin/sh
#SUCCESS=$(curl --insecure  https://kvdb.io/EUAJuVP5WS2Xs3i5N5Tsp4/migration_8dd08\1%)
#export $circleid = $8dd08
SUCCESS=$(curl --insecure  https://kvdb.io/EUAJuVP5WS2Xs3i5N5Tsp4/migration_8dd08)
# Logic for reverting the database state
if $SUCCESS == 1
then
    cd backend
    npm install
    npm run migration:revert
fi 
