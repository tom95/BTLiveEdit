as yet unclassified
testApplicationEventsUpdatedOnAfterConstruction

	| object applicationEvent previousInterval |
	object := BTLMyGraph new.
	
	applicationEvent := session events detect: [:event | event instance == object and: [event selector == #label:]].
	previousInterval := applicationEvent sourceInterval.
	
	self doIt: 'self align: spacing' withReceiver: object children first.
	session applyChangesFor: object.
	
	self assert: previousInterval + 'align: spacing' size + 2 equals: applicationEvent sourceInterval