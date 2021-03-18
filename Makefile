OUT_FN = resources/Salmon.theme.json

night: resources/Salmon.Night.theme.json resources/Restraint.Night.xml
	cp $< $(OUT_FN)

day: resources/Salmon.Day.theme.json resources/Restraint.Day.xml
	cp $< $(OUT_FN)

palettes/palette.%.yaml: src/colorspec.yaml
	palette-gen --out palettes/palette.yaml \
		palette \
		src/colorspec.yaml \
		$* \
		--html

resources/Restraint.%.xml: palettes/palette.%.yaml src/scheme.yaml
	echo "Processing $< to $@, stem is $*"
	palette-gen \
		--out resources/Restraint.$*.xml \
		scheme src/scheme.yaml \
		palettes/palette.$*.yaml

resources/Salmon.%.theme.json: palettes/palette.%.yaml src/theme.yaml
	echo "Processing $< to $@, stem is $*"
	palette-gen \
		--out resources/Salmon.$*.theme.json \
		theme src/theme.yaml \
		palettes/palette.$*.yaml \
		--inline-colors

resources/Salmon.theme.json: resources/Salmon.%.theme.json
	cp $< $@