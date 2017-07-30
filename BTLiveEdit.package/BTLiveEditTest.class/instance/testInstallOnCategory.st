as yet unclassified
testInstallOnCategory

	BTLTracker installOnCategories: #('BTLiveEdit-TestData').
	
	self assert: BTLTracker equals: (BTLTestObject methodDict at: #align:) class.
	self assert: (BTLiveEditTest methodDict at: #dummyEditableMethod:) class ~= BTLTracker description: 'method in other category is not replaced'.
	
	BTLTracker uninstallOnCategories: #(BTLiveEditTest).
	self assert: BTLTracker equals: (BTLTestObject methodDict at: #align:) class description: 'uninstall on unrelated category leaves method alone'.
	
	BTLTracker uninstallOnCategories: #('BTLiveEdit-TestData').
	self assert: (BTLTestObject methodDict at: #align:) class ~= BTLTracker description: 'method was reset'