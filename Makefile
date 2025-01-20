# Makefile for the Guessing Game project

# Variables
SCRIPT = guessinggame.sh
README = README.md

# Default target
all: $(README)

# Rule to generate README.md
$(README): $(SCRIPT)
	@echo "Generating README.md..."
	@echo "# Guessing Game" > $(README)
	@echo "Date and Time: $(shell date)" >> $(README)
	@echo "Lines of Code in $(SCRIPT): $(shell wc -l < $(SCRIPT))" >> $(README)

# Clean up
clean:
	rm -f $(README)

.PHONY: all clean
