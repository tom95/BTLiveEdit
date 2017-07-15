as yet unclassified
applyInSession: aSession

	| sourceEvent |
	sourceEvent := aSession findSourceEventMatching: self.
	sourceEvent applyChangeFrom: self