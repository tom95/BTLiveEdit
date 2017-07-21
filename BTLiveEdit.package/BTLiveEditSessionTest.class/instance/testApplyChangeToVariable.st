as yet unclassified
testApplyChangeToVariable

	| object |
	object := BTLTestObject new.
	self doIt: 'self align: spacing' withReceiver: object.
	
	session applyChangesFor: object.
	
	self assert: ((self methodSource: #initialize of: BTLTestObject) asString includesSubstring: 'self align: spacing')