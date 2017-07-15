as yet unclassified
applyChangeFrom: aDoItEvent
	
	| method category newSource |
	method := self sourceInstance class methodDictionary at: self sourceSelector.
	
	self timeStamp ~= method timeStamp ifTrue: [self error: 'Method was edited after this event was recorded. Proceed to try applying it anyway.'].
	
	newSource := method getSourceFromFile replaceFrom: self sourceRange start to: self sourceRange stop with: aDoItEvent sourceWithoutReceiver.
	category := self sourceInstance class whichCategoryIncludesSelector: self sourceSelector.
	self sourceInstance class compile: newSource value classified: category