as yet unclassified
testMarkImmutable

	| object |
	session checkImmutable: [:class :selector | selector == #initialize].
	
	object := BTLTestObject new.
	self doIt: 'self align: spacing' withReceiver: object.
	
	session applyChangesFor: object.
	
	self deny: ((self methodSource: #initialize of: BTLTestObject) asString includesSubstring: 'self align: spacing')