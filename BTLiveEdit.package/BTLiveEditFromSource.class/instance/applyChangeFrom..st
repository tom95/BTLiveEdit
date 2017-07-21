as yet unclassified
applyChangeFrom: aDoItEvent
	
	| method |
	method := self sourceInstance class methodDictionary at: self sourceSelector.
	
	self timeStamp ~= method timeStamp
		ifTrue: [self error: 'Method was edited after this event was recorded. Proceed to try applying it anyway.'].
	
	aDoItEvent tryUpdating: self sourceSelector of: self sourceInstance class withMessageSend: [:source |
		method getSourceFromFile
			replaceFrom: self sourceRange start
			to: self sourceRange stop
			with: source]