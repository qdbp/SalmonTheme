OUT_FN = $(RES_DIR)/Salmon.theme.json
RES_DIR = src/main/resources/
PGEN = palette-gen

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
	$(PGEN) \
		palette \
		--spec src/colorspec.yaml \
		--out build/palette.yaml \
		$* \
		--html --cone

$(RES_DIR)/Restraint.%.xml: build/palette.%.yaml src/scheme.yaml
	echo "Processing $< to $@, stem is $*"
	$(PGEN) \
		jb_scheme \
		--spec src/scheme.yaml \
		--palette build/palette.$*.yaml \
		--out $(RES_DIR)/Restraint.$*.xml

build/Salmon.%.theme.json: build/palette.%.yaml src/theme.yaml
	echo "Processing $< to $@, stem is $*"
	$(PGEN) \
		jb_theme \
		--spec src/theme.yaml \
		--palette build/palette.$*.yaml \
		--out build/Salmon.$*.theme.json \
		--inline-colors
