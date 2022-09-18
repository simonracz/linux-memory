.PHONY: all clean

CTARGETS := $(basename $(wildcard *.c))
CXXTARGETS := $(basename $(wildcard *.cpp))
RUSTTARGETS := $(basename $(wildcard *.rs))

all : $(CTARGETS) $(CXXTARGETS) $(RUSTTARGETS)

clean :
	rm $(CTARGETS) $(CXXTARGETS) $(RUSTTARGETS)

CFLAGS := -std=c17
CXXFLAGS := -std=c++17

% :: %.c
	$(CC) $(CFLAGS) $(CPPFLAGS) $< -o $@

% :: %.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

% :: %.rs
	rustc --edition 2021 -O $<
