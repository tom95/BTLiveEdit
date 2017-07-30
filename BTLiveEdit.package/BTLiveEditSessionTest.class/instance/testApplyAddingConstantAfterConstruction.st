as yet unclassified
testApplyAddingConstantAfterConstruction
	" check that we correctly find the place an object was constructed at and append a setter call after its construction "

	| object |
	object := BTLMyGraph new children first.
	self doIt: 'self color: Color red' withReceiver: object.
	
	session applyChangesFor: object.
	
	self assert: ((self methodSource: #initialize of: BTLMyGraph) asString
		includesSubstring: 'addChild: ((BTLNode new) color: Color red)')