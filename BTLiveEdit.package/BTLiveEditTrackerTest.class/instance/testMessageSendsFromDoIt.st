as yet unclassified
testMessageSendsFromDoIt
	
	| event code object |
	" triggers the message sends we want to record "
	object := BTLTestObject new.
	code := 'self align: #(left left)'.
	
	self doIt: code withReceiver: object.
	event := session events last.
	
	self assert: #align: identical: event selector.
	self assert: BTLTestObject identical: event instance class.
	self assert: (#((left left)) hasEqualElements: event arguments) description: 'arguments are the same'.
	self assert: object identical: event sourceReceiverContext.
	self assert: code equals: event source