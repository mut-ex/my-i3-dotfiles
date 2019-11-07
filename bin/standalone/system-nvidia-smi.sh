#!/bin/zsh

# nvidia-smi --query-gpu=utilization.gpu,utilization.memory --format=csv,noheader,nounits | awk -F ","  '{gsub(/ /, "", $0); print $1"% Mem "$2"%"} '
# #nvidia-smi --query-gpu=utilization.gpu,memory.used,memory.free,temperature.gpu --format=csv,noheader,nounits | awk -F "," '{ print ""$1"","% ",""$2"","MB/",""$3"","MB", ""$4"","°C"}'

nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits | awk -F ","  '{gsub(/ /, "", $0); print $1"%"} '
#nvidia-smi --query-gpu=utilization.gpu,memory.used,memory.free,temperature.gpu --format=csv,noheader,nounits | awk -F "," '{ print ""$1"","% ",""$2"","MB/",""$3"","MB", ""$4"","°C"}'

