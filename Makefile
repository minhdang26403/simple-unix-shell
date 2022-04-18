# Makefile for the CS:APP Shell Lab

TEAM = NOBODY
VERSION = 1
DRIVER = ./sdriver.pl
TSH = ./tsh
TSHARGS = "-p"
CC = gcc
CFLAGS = -Wall -O2
FILES = $(TSH) ./myspin ./mysplit ./mystop ./myint

all: $(FILES)

##################
# Regression tests
##################

# Run tests using the student's shell program
test01:
	$(DRIVER) -t traces/trace01.txt -s $(TSH) -a $(TSHARGS)
test02:
	$(DRIVER) -t traces/trace02.txt -s $(TSH) -a $(TSHARGS)
test03:
	$(DRIVER) -t traces/trace03.txt -s $(TSH) -a $(TSHARGS)
test04:
	$(DRIVER) -t traces/trace04.txt -s $(TSH) -a $(TSHARGS)
test05:
	$(DRIVER) -t traces/trace05.txt -s $(TSH) -a $(TSHARGS)
test06:
	$(DRIVER) -t traces/trace06.txt -s $(TSH) -a $(TSHARGS)
test07:
	$(DRIVER) -t traces/trace07.txt -s $(TSH) -a $(TSHARGS)
test08:
	$(DRIVER) -t traces/trace08.txt -s $(TSH) -a $(TSHARGS)
test09:
	$(DRIVER) -t traces/trace09.txt -s $(TSH) -a $(TSHARGS)
test10:
	$(DRIVER) -t traces/trace10.txt -s $(TSH) -a $(TSHARGS)
test11:
	$(DRIVER) -t traces/trace11.txt -s $(TSH) -a $(TSHARGS)
test12:
	$(DRIVER) -t traces/trace12.txt -s $(TSH) -a $(TSHARGS)
test13:
	$(DRIVER) -t traces/trace13.txt -s $(TSH) -a $(TSHARGS)
test14:
	$(DRIVER) -t traces/trace14.txt -s $(TSH) -a $(TSHARGS)
test15:
	$(DRIVER) -t traces/trace15.txt -s $(TSH) -a $(TSHARGS)
test16:
	$(DRIVER) -t traces/trace16.txt -s $(TSH) -a $(TSHARGS)

# clean up
clean:
	rm -f $(FILES) *.o *~

