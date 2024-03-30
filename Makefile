export WINEDEBUG=-all

NP ?= 1

.PHONY: lab1
lab1: 
	@echo "Starting the script..."; \
	start=$$(date +%s%3N); \
	wine .fptl/fptl.exe lab1.fptl -n $(NP) -v; \
	end=$$(date +%s%3N); \
	diff=$$((end-start-260)); \
	echo "Script execution time: $$diff miliseconds";