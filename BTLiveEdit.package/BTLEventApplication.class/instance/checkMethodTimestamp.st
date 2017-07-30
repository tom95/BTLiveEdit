as yet unclassified
checkMethodTimestamp

	^ self timeStamp ~= self method timeStamp
		ifTrue: [self error: 'Method was edited after this event was recorded. Proceed to try applying it anyway.']