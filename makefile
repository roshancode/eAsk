CC = g++
FILES = src/CurlCore.cpp \
		src/eAsk.cpp

OUT_EXE = eAsk
LIB = -lcurl -lpthread

.PHONY: all build

build: $(FILES)
	$(CC) $(LIB) -o $(OUT_EXE) -g $^
	

clean:
	rm -f *.o core
	rm -f $(OUT_EXE)

all: clean build
