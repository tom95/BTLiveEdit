as yet unclassified
testApplyAddingConstantInInitialize
	" check that we correctly identify that we don't track the construction of this object and thus have to
	  insert the setter call in its initialize method "

	| object |
	object := BTLTestObject new.
	self doIt: 'self spacing: 15' withReceiver: object.
	
	session applyChangesFor: object.
	
	self assert: ((self methodSource: #initialize of: BTLTestObject) asString includesSubstring: 'self spacing: 15')