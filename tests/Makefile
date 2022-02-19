RESULTS=RESULTS/
SYN=SYN/
SET=SET/
TIMEOUT=300

all: build test

build:
	cd ../src && make && cd ../tests

test:
	python3 run_tests.py $(SYN) $(RESULTS) $(TIMEOUT)
	python3 run_tests.py $(SET) $(RESULTS) $(TIMEOUT)
