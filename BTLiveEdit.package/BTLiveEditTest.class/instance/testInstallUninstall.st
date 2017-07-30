as yet unclassified
testInstallUninstall

	BTLTracker installOnCategories: #('BTLiveEdit-TestData').
	
	self assert: BTLTracker equals: (BTLTestObject methodDict at: #align:) class.
	self assert: (BTLTestObject methodDict at: #initialize) class ~= BTLTracker description: 'non editable method is not replaced'.
	
	BTLTracker uninstallOnCategories: #('BTLiveEdit-TestData').
	
	self assert: (BTLTestObject methodDict at: #align:) class ~= BTLTracker description: 'method was reset'