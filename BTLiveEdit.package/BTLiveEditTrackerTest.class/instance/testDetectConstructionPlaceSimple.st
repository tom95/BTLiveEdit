as yet unclassified
testDetectConstructionPlaceSimple
	
	| event |
	BTLTestObject createNodeSimple.
	
	event := session constructionEvents first.
	
	self assert: #initialize identical: event selector.
	self assert: BTLNode identical: event instance class.
	self assert: BTLTestObject identical: event sourceInstance.
	self assert: #createNodeSimple identical: event sourceSelector