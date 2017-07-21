as yet unclassified
testDetectConstructionPlaceSubclass
	
	| event |
	BTLTestObject createNodeSubclass.
	
	event := session constructionEvents first.
	
	self assert: #initialize identical: event selector.
	self assert: BTLNodeSubclass identical: event instance class.
	self assert: BTLTestObject identical: event sourceInstance.
	self assert: #createNodeSubclass identical: event sourceSelector