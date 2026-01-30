#!/bin/bash

# Define the variables
TARGET_DB="mandy_db6"
TARGET_USER="mandy_pop"


read -sp "Enter Password for $TARGET_USER: " DB_PASS
echo "" 

# This will now correctly show the database name
echo "------------------------------------------"
echo "TEST SUCCESS: I would have created $TARGET_DB"
echo "using the password you just typed."
echo "------------------------------------------"