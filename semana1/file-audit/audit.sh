#!/bin/bash

BASE_DIR="/srv/app"
REPORT_FILE="audit_report.txt"

echo "=== ARCHIVOS CON PERMISOS 777 ===" > "$REPORT_FILE"
find "$BASE_DIR" -perm 777 >> "$REPORT_FILE"

echo "=== ARCHIVOS MAYORES A 1MB ===" >> "$REPORT_FILE"
find "$BASE_DIR" -size +1M >> "$REPORT_FILE"

echo "=== ARCHIVOS SENSIBLES ===" >> "$REPORT_FILE"
find "$BASE_DIR" -name "secret.txt" -o -name "passwords.txt" >> "$REPORT_FILE"

