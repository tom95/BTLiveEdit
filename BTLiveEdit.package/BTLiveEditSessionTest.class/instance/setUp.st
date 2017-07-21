as yet unclassified
setUp

	super setUp.
	
	self eventuallyReset: #initialize of: BTLTestObject.
	self eventuallyReset: #initialize of: BTLNode.
	self eventuallyReset: #initialize of: BTLMyGraph.

	self assert: ((self methodSource: #initialize of: BTLTestObject) asString includesSubstring: 'self align: #(center center)')