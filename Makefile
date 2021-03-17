.PHONY: build-palettes

build-palettes:
	@mkdir -p build
	palette-gen palette src/colorspec.yaml --out build/palette.yaml
	palette-gen scheme src/scheme.yaml build/palette.yaml --out resources/Restraint.xml

