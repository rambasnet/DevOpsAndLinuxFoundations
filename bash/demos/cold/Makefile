SH = /bin/bash

.PHONY: all run bats kattis-test shellcheck

all: shellcheck bats kattis-test

bats:
	bats tests/

kattis-test:
	kattis test

run:
	$(SH) src/cold.sh

shellcheck:
	shellcheck -x --source-path=src src/*.sh

