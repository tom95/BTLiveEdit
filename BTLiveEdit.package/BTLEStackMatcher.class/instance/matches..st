as yet unclassified
matches: aContext

	| context |
	context := aContext.
	[context isNil or: [self contextMatches: context]] whileFalse: [context := context sender].

	^ context notNil