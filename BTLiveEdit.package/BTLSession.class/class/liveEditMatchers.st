as yet unclassified
liveEditMatchers
	" register matchers for classes, specific methods of classes here. optionally provide a block that extracts the originally executed source code and its receiver"

	| extractFromParser |
	extractFromParser := [:context | | cue |
		" go up until we find the #DoIt "
		[context selector == #evaluateCue:ifFail:logged:] whileFalse: [context := context sender].
		" the first argument for this method is our CompilationCue "
		cue := context at: 1.
		{cue sourceStream contents. cue receiver}].

	^ {
		BTLEStackMatcher forClass: #HaloMorph.
		BTLEStackMatcher forClass: #SmalltalkEditor selectors: #(evaluateSelectionAndDo:) sourceExtractDo: extractFromParser.
		BTLEStackMatcher forClass: #BTLiveEditTestWithSession selectors: #(doIt:withReceiver:) sourceExtractDo: extractFromParser}