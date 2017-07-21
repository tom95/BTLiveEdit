as yet unclassified
testFindConstructionPlace

	| event |
	BTLMyGraph new.
	
	event := session findConstructingEventFor: session constructionEvents second instance.
	
	self
		assert: BTLMyGraph identical: event sourceInstance class;
		assert: #initialize identical: event sourceSelector