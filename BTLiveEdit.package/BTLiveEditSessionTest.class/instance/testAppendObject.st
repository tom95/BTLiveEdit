as yet unclassified
testAppendObject

	| object |
	object := BTLMyGraph new.
	self doIt: 'self addChild: BTLNode new' withReceiver: object.
	
	session applyChangesFor: object.
	
	self assert: ((self methodSource: #initialize of: BTLTestObject) includes: 'self addChild: BTLNode new')