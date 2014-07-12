#/bin/sh
if [ $# -eq 1 ] 
then
	echo "Downloading "$1" to fpga"
	cat $1 > /sys/kernel/debug/fpga/data
	echo 1 > /sys/kernel/debug/fpga/download
	echo "done" 	
else
	echo "Usage:fpga_config.sh file_name"
fi

