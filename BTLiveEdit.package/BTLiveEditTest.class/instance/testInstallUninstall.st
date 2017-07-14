as yet unclassified
testInstallUninstall

	BTLiveEditTracker installOnCategories: #(BTLiveEdit-TestData).
	
	self assert: BTLiveEditTracker equals: (BTLTestObject methodDict at: #align:) class.
	self assert: (BTLTestObject methodDict at: #initialize) class ~= BTLiveEditTracker description: 'non editable method is not replaced'.
	
	BTLiveEditTracker uninstallOnCategories: #(BTLiveEdit-TestData).
	
	self assert: (BTLTestObject methodDict at: #align:) class ~= BTLiveEditTracker description: 'method was reset'