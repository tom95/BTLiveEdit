as yet unclassified
testApplyChangeToConstant

	| object |
	object := BTLTestObject new.
	self doIt: 'self align: #(end end)' withReceiver: object.
	
	session applyChangesFor: object.
	
	self assert: ((self methodSource: #initialize of: BTLTestObject) asString includesSubstring: 'self align: #(#end #end)')