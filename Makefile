# ACTIONS  = $(filter %/, $(sort $(wildcard github/*/ go/*/)))
ACTIONS  = $(filter %/, $(sort $(wildcard github/*/)))

labeler:
	for action in $(ACTIONS); do \
		echo "$${action%/}: $${action}**"; \
	done > .github/actions.yml
