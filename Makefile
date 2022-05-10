OUT_FN = $(RES_DIR)/Salmon.theme.json
RES_DIR = src/main/resources/

.PRECIOUS: build/palette.%.yaml
.PRECIOUS: $(RES_DIR)/Restraint.%.yaml

night: build/Salmon.Night.theme.json resources/Restraint.Night.xml
	cp $< $(OUT_FN)
	cp build/palette.Night.html build/palette.html
	cp $(RES_DIR)/Restraint.Night.xml $(RES_DIR)/Restraint.xml

twilight: build/Salmon.Twilight.theme.json $(RES_DIR)/Restraint.Twilight.xml
	cp $< $(OUT_FN)
	cp build/palette.Twilight.html build/palette.html
	cp $(RES_DIR)/Restraint.Twilight.xml $(RES_DIR)/Restraint.xml

day: build/Salmon.Day.theme.json $(RES_DIR)/Restraint.Day.xml
	cp $< $(OUT_FN)
	cp build/palette.Day.html build/palette.html
	cp $(RES_DIR)/Restraint.Day.xml $(RES_DIR)/Restraint.xml

build/palette.%.yaml: src/colorspec.yaml
	palette-gen --out build/palette.yaml \
		palette \
		src/colorspec.yaml \
		$* \
		--html --cone

$(RES_DIR)/Restraint.%.xml: build/palette.%.yaml src/scheme.yaml
	echo "Processing $< to $@, stem is $*"
	palette-gen \
		--out $(RES_DIR)/Restraint.$*.xml \
		scheme src/scheme.yaml \
		build/palette.$*.yaml

build/Salmon.%.theme.json: build/palette.%.yaml src/theme.yaml
	echo "Processing $< to $@, stem is $*"
	palette-gen \
		--out build/Salmon.$*.theme.json \
		theme src/theme.yaml \
		build/palette.$*.yaml \
		--inline-colors
