as yet unclassified
newFromContext: aContext receiver: aReceiverObject arguments: anArgumentCollection selector: aSelectorSymbol

	| context range |
	context := aSelectorSymbol == #initialize
		ifTrue: [self findConstructingContextFrom: aContext for: aReceiverObject]
		ifFalse: [aContext].
	
	range := (context debuggerMap rangeForPC: context pc contextIsActiveContext: false).
	
	^ BTLEventApplication new
		instance: aReceiverObject;
		selector: aSelectorSymbol;
		arguments: anArgumentCollection;
		sourceSelector: context selector;
		sourceInstance: context receiver;
		sourceInterval: range;
		timeStamp: context method timeStamp;
		yourself