as yet unclassified
testApplicationEventsUpdatedOnReplaceArguments

	| object applicationEvent previousInterval |
	object := BTLTestObject new.
	
	applicationEvent := session events detect: [:event | event instance == object and: [event selector == #align:]].
	previousInterval := applicationEvent sourceInterval.
	
	self doIt: 'self align: #a' withReceiver: object.
	session applyChangesFor: object.
	
	self assert: previousInterval + ('align: #a' size - applicationEvent sourceInterval size) equals: applicationEvent sourceInterval