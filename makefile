
.PHONY: all
all: README.md

README.md: guessinggame.sh makefile
	@echo "# Guessing Game Project" > README.md
	@echo "" >> README.md
	@echo "Date and time: $$(date '+%Y-%m-%d %H:%M:%S')" >> README.md
	@echo "" >> README.md
	@echo "Number of lines of code: $$(wc -l < guessinggame.sh)" >> README.md

