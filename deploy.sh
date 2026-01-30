#!/bin/bash
# Automated Database Provisioning
# Configuration - Change these for the specific lab/project requirements
TARGET_DB="mandy_db6"
TARGET_USER="mandy_pop"

read -sp "Enter password for '$TARGET_USER': " DB_PASS
echo ""

sudo -u postgres psql \
  -v DB_USER="$TARGET_USER" \
  -v DB_PASSWORD="'$DB_PASS'" \
  -v DB_NAME="$TARGET_DB" \
  -f db_setup.sql
