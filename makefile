# create 2024/3/23
# editor lnfromnorth

TARGET_NAME = core

BUILD=./build
TESTS=./tests
SRC=./src

all: wave

# make file list
$(BUILD)/input_files:
	find $(SRC) -name "*.v" > $@ 

$(BUILD)/wave.vcd: $(BUILD)/input_files $(TESTS)/$(TARGET_NAME)_tb.v
	iverilog -s test -o $(BUILD)/$(TARGET_NAME).o $(TESTS)/core_tb.v -f $(BUILD)/input_files
	vvp $(BUILD)/$(TARGET_NAME).o

wave: $(BUILD)/wave.vcd
	gtkwave $<


.PHONY: clean
clean:
	rm -rf $(BUILD)/*