as yet unclassified
testApplyChangeToUnknownVariable

	| object |
	object := BTLTestObject new.
	self doIt: '|xx| xx := #center. self align: xx' withReceiver: object.
	
	session applyChangesFor: object.
	
	self assert: ((self methodSource: #initialize of: BTLTestObject) asString includesSubstring: 'self align: #center')