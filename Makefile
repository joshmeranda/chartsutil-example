pull-scripts:
	./scripts/pull-scripts

TARGETS := prepare patch clean clean-cache charts list index unzip zip standardize validate template regsync check-images check-rc icon

$(TARGETS):
	@./scripts/pull-scripts
	@./bin/charts-build-scripts $@

.PHONY: $(TARGETS)
