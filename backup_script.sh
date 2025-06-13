#!/bin/bash

src_dir="$HOME/dokumen_sumber"
backup_dir="$HOME/backup_hasil"
duration=$((60 * 60)) # 1 jam
interval=15           # dalam satuan detik
max_files=10

start_time=$(date +%s)

while  (( $(date +%s) - start_time <  $duration )); do
	index=$(( (( $(date +%s) - start_time ) / interval ) % max_files + 1 ))
	cp -r "$src_dir" "$backup_dir/file$index"
	echo "Backop ke file$index dilakukan pada $(date)"
	sleep $interval
done
