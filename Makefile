#
# Makefile for alien-fix-buggy-rpm
#


# This was originally written to correct the distributed version of
# VueScan.  The URL below probably won't work forever.
TEST_RPM_URL := https://www.hamrick.com/files/vuex6497.rpm
TEST_RPM := $(shell echo "$(TEST_RPM_URL)" | sed -e 's|.*/||')
TEST_OUTPUT := vuescan-*.$(shell uname -m).rpm


default:
	@echo "Nothing to do."


$(TEST_RPM):
	curl -s --location "$(TEST_RPM_URL)" > $@
TO_CLEAN += $(TEST_RPM)


test: $(TEST_RPM)
	./alien-fix-buggy-rpm $(TEST_RPM)
TO_CLEAN += $(TEST_OUTPUT)


clean:
	rm -rf $(TO_CLEAN) *~
