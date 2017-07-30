as yet unclassified
testApplyAddingMultipleConstantsAfterConstruction

	| object |
	object := BTLMyGraph new children first.
	self
		doIt: 'self align: #left' withReceiver: object;
		doIt: 'self color: Color red' withReceiver: object.
	
	session applyChangesFor: object.
	
	self assert: ((self methodSource: #initialize of: BTLMyGraph) asString
		includesSubstring: 'addChild: (((BTLNode new) color: Color red) align: #left)')