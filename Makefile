.PHONY: all
all: bash-shellcheck bash-bats
	@echo "All done..."

bash-shellcheck:
	@echo "Running ShellCheck on Bash scripts..."
	shellcheck -x --source-path=bash/demos/cold/src bash/demos/cold/src/*.sh

bash-bats:
	@echo "Running Bats tests on Bash scripts..."
	bats bash/demos/cold/tests/
