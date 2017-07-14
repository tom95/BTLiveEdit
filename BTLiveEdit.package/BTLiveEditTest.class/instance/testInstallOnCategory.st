as yet unclassified
testInstallOnCategory

	BTLiveEditTracker installOnCategories: #(BTLiveEdit-TestData).
	
	self assert: BTLiveEditTracker equals: (BTLTestObject methodDict at: #align:) class.
	self assert: (BTLiveEditTest methodDict at: #dummyEditableMethod:) class ~= BTLiveEditTracker description: 'method in other category is not replaced'.
	
	BTLiveEditTracker uninstallOnCategories: #(BTLiveEditTest).
	self assert: BTLiveEditTracker equals: (BTLTestObject methodDict at: #align:) class description: 'uninstall on unrelated category leaves method alone'.
	
	BTLiveEditTracker uninstallOnCategories: #(BTLiveEdit-TestData).
	self assert: (BTLTestObject methodDict at: #align:) class ~= BTLiveEditTracker description: 'method was reset'