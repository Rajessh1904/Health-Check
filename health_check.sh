#!/bin/bash

function check_cpu {
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')
    echo "CPU Usage: $cpu_usage"
}

function check_disk {
    disk_usage=$(df -h | grep '^/dev/' | awk '{ print $5 " " $1 }')
    echo "Disk Usage:"
    echo "$disk_usage"
}

function check_memory {
    memory_usage=$(free -h | grep Mem | awk '{print $3 "/" $2 " (" $3/$2*100.0 "%)"}')
    echo "Memory Usage: $memory_usage"
}

function explain_summary {
    echo "Health Check Summary:"
    echo "CPU Usage: Shows the percentage of CPU utilization."
    echo "Disk Usage: Displays the disk usage percentage for each mounted filesystem."
    echo "Memory Usage: Shows the used and total memory along with the percentage of memory utilization."
}

if [ "$1" == "explain" ]; then
    explain_summary
else
    check_cpu
    check_disk
    check_memory
fi