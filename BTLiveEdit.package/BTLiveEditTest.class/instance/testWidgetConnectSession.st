as yet unclassified
testWidgetConnectSession

	| morph |
	BTLSession on: (morph := BTLPatchedMorph new).
	
	self assert: BTLTracker equals: (BTLTestObject methodDict at: #align:) class.
	
	morph delete.
	
	self assert: CompiledMethod equals: (BTLTestObject methodDict at: #align:) class