# create 2024/3/23
# editor lnfromnorth

TARGET_NAME = core

BUILD=./build
TESTS=./tests
SRC=./src

all: wave

FILES=$(shell find $(SRC) -name "*.v")

# make file list
$(BUILD)/input_files:
	find $(SRC) -name "*.v" > $@ 

$(BUILD)/wave.vcd: $(TESTS)/$(TARGET_NAME)_tb.v
	iverilog -s test -o $(BUILD)/$(TARGET_NAME).o $(FILES) $(TESTS)/core_tb.v $(TESTS)/rom.v
	vvp $(BUILD)/$(TARGET_NAME).o

wave: $(BUILD)/wave.vcd
	gtkwave $<


.PHONY: clean
clean:
	rm -rf $(BUILD)/*