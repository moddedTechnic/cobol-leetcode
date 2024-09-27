COBOL_COMPILER = cobc

SRC_DIR = ./challenges
BIN_DIR = ./bin

COBOL_SOURCES = $(wildcard $(SRC_DIR)/*.cob)

EXECUTABLES = $(patsubst $(SRC_DIR)/%.cob,$(BIN_DIR)/%,$(COBOL_SOURCES))

all: $(EXECUTABLES)

$(BIN_DIR)/%: $(SRC_DIR)/%.cob
	@mkdir -p $(BIN_DIR)
	$(COBOL_COMPILER) -x -o $@ $<

clean:
	rm -f $(BIN_DIR)/*

.PHONY: all clean
