as yet unclassified
testApplyChangeImmediately

	| object |
	session applyImmediately: true.
	
	object := BTLTestObject new.
	self doIt: 'self align: #(end end)' withReceiver: object.
	self assert: ((self methodSource: #initialize of: BTLTestObject) asString includesSubstring: 'self align: #(#end #end)')