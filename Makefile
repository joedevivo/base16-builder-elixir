.PHONY: all
all: base16_builder

.PHONY: clean
clean:
	rm -f base16_builder
	rm -rf sources
	rm -rf schemes
	rm -rf templates

.PHONY: deps
deps:
	@mix deps.get

.PHONY: compile
compile: deps
	@MIX_ENV=prod mix compile

base16_builder: compile
	@MIX_ENV=prod mix escript.build
