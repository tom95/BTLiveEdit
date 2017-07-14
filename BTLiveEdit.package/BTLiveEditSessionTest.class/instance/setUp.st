as yet unclassified
setUp

	super setUp.
	self assert: ((self methodSource: #initialize of: BTLTestObject) includes: 'self align: #(center center)')