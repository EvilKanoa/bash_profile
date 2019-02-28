#!/bin/bash
CPU_LOAD=`uptime | sed -E "s/.*load averages: ([0-9]+.[0-9]+).*/\1/"`
CPU_USAGE=`echo "scale=2 ; $CPU_LOAD / 4" | bc | sed 's/\.//'`

MEM_FREE_BLOCKS=`vm_stat | grep free | sed -E "s/[^0-9]*([0-9]+)\./\1/"`
MEM_INACTIVE_BLOCKS=`vm_stat | grep inactive | sed -E "s/[^0-9]*([0-9]+)\./\1/"`
MEM_SPEC_BLOCKS=`vm_stat | grep speculative | sed -E "s/[^0-9]*([0-9]+)\./\1/"`
MEM_USAGE=`echo "scale=2 ; 1.00 - (($MEM_FREE_BLOCKS + $MEM_INACTIVE_BLOCKS + $MEM_SPEC_BLOCKS) / 2097152)" | bc | sed 's/\.//'`

echo "CPU: $CPU_USAGE%, Mem: $MEM_USAGE%"

