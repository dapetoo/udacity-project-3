#!/bin/bash
SUCCESS=$(curl --insecure  https://kvdb.io/9GE4jRtKznmVKRfvdBABBe/migration_${CIRCLE_WORKFLOW_ID:0:5})
# Logic for reverting the database state
echo $SUCCESS
if [[ $SUCCESS == 1 ]]
then
  cd backend
  npm install
  npm run migrations:revert #revert the successful migration
  echo "Migration reverted"
else
  echo "Migration revert was unsuccessful" 
fi

