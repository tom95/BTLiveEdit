as yet unclassified
testApplyChangeToVariable

	| object |
	object := BTLTestObject new.
	self doIt: 'self align: customAlign' withReceiver: object.
	
	session applyChangesFor: object.
	
	self assert: ((self methodSource: #initialize of: BTLTestObject) includes: 'self align: customAlign')