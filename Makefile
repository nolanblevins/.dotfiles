.SILENT:
# runs clean target then linux.sh script
linux: clean
	./bin/linux.sh
#runs cleanup.sh script
clean: 
	./bin/cleanup.sh
