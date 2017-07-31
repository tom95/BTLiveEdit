as yet unclassified
insertAfterConstruction: aConstructionSourceEvent in: aSession

	aConstructionSourceEvent checkMethodTimestamp.
	
	aSession class codeChangerClass new
		session: aSession;
		methodReference: aConstructionSourceEvent sourceMethodReference;
		sourceInterval: aConstructionSourceEvent sourceInterval;
		liveEditEvent: self;
		insertAfterConstruction