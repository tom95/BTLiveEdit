as yet unclassified
testApplyMultiple

	| object |
	session applyImmediately: true.
	
	object := BTLMyGraph new.
	
	self
		doIt: 'self align: #(end end)' withReceiver: object;
		doIt: 'self color: Color yellow' withReceiver: object;
		assert: ((self methodSource: #initialize of: BTLMyGraph) asString includesSubstring: 'self align: #(#end #end)');
		assert: ((self methodSource: #initialize of: BTLMyGraph) asString includesSubstring: 'self color: Color yellow')