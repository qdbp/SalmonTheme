.PHONY: copy
.PRECIOUS: build/palette.%.yaml
.PRECIOUS: resources/Restraint.%.yaml

OUT_FN = resources/Salmon.theme.json

night: build/Salmon.Night.theme.json build/Restraint.Night.xml
	cp $< $(OUT_FN)
	cp build/palette.Night.html build/palette.html
	cp build/Restraint.Night.xml resources/Restraint.xml

day: build/Salmon.Day.theme.json build/Restraint.Day.xml
	cp $< $(OUT_FN)
	cp build/palette.Day.html build/palette.html
	cp build/Restraint.Day.xml resources/Restraint.xml

build/palette.%.yaml: src/colorspec.yaml
	palette-gen --out build/palette.yaml \
		palette \
		src/colorspec.yaml \
		$* \
		--html \
		--cone

build/Restraint.%.xml: build/palette.%.yaml src/scheme.yaml
	echo "Processing $< to $@, stem is $*"
	palette-gen \
		--out build/Restraint.$*.xml \
		scheme src/scheme.yaml \
		build/palette.$*.yaml

build/Salmon.%.theme.json: build/palette.%.yaml src/theme.yaml
	echo "Processing $< to $@, stem is $*"
	palette-gen \
		--out build/Salmon.$*.theme.json \
		theme src/theme.yaml \
		build/palette.$*.yaml \
		--inline-colors
