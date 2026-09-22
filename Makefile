.PHONY: all
all: bash-check
	@echo "All done..."

bash-check:
	@echo "Running ShellCheck on Bash scripts..."
	shellcheck -x --source-path=bash/demos/cold/src bash/demos/cold/src/*.sh