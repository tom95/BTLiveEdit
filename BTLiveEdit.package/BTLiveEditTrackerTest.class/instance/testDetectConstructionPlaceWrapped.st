as yet unclassified
testDetectConstructionPlaceWrapped
	
	| event |
	BTLTestObject createNodeWrapped.
	
	event := session constructionEvents first.
	
	self assert: #initialize identical: event selector.
	self assert: BTLNode identical: event instance class.
	self assert: BTLTestObject identical: event sourceInstance.
	self assert: #createNodeWrapped identical: event sourceSelector