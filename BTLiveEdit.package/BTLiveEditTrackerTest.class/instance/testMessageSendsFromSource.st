as yet unclassified
testMessageSendsFromSource
	
	| event |
	" triggers the message sends we want to record "
	BTLTestObject new.
	
	event := session events first.
	
	self assert: #align: identical: event selector.
	self assert: BTLTestObject identical: event instance class.
	self assert: (#((center center)) hasEqualElements: event arguments) description: 'arguments are the same'