#/bin/bash

echo "=== 1. isi file /etc/asswd ==="
cat /etc/passwd

echo -e "\n=== 2. Filter baris yang mengandung /home/ ==="
grep '/home/' /etc/passwd

echo -e "\n===3. Ambil hanya username dari hasil filter ==="
grep '/home/' /etc/passwd | cut -d: -f1
