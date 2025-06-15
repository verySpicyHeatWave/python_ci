#######################################################################
#           VARIABLE DECLARATIONS                                     #
#######################################################################

# Bash Formatting: https://misc.flogisoft.com/bash/tip_colors_and_formatting

SRC_DIR = src/
TST_DIR = tests/

Reset=\033[0m
Red=\033[0;31m
Green=\033[0;38;5;40m
Yellow=\033[0;33m



#######################################################################
#           PHONY TARGETS                                             #
#######################################################################

# Phony Declarations
.PHONY: all run lint clean test inclusive

# Clean up the working directory (NOTE: NEED TO ADD DEEPER REMOVAL OF PYCACHES)
clean:
	@rm -rf .pytest_cache __pycache__ .ruff_cache
	@find . -type d -name "__pycache__" -exec rm -rf {} +
	@rm -f .coverage

# Run the linter on all of the files
lint:
	@ruff check $(SRC_DIR)/ $(TST_DIR)/

# Run all of the tests in the test suite
test: $(TESTFILE)
	@pytest --cov=src tests/*.py

inclusive:
	@uv pip install -e .



#######################################################################
#           REAL TARGETS                                              #
#######################################################################

