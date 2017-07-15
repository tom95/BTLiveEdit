as yet unclassified
testDoItDoesNotChange

	| object |
	object := BTLTestObject new.
	self doIt: 'self align: customAlign' withReceiver: object.
	
	
	self assert: ((self methodSource: #initialize of: BTLTestObject) asString includesSubstring: 'self align: #(center center)')