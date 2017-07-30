as yet unclassified
testInstallAllUninstallAll

	BTLTracker installAll.
	
	self assert: BTLTracker equals: (BTLTestObject methodDict at: #align:) class.
	self assert: BTLTracker equals: (BTLiveEditTest methodDict at: #dummyEditableMethod:) class.
	
	BTLTracker uninstallAll.
	
	self assert: (BTLTestObject methodDict at: #align:) class ~= BTLTracker description: 'method was reset'.
	self assert: (BTLiveEditTest methodDict at: #dummyEditableMethod:) class ~= BTLTracker description: 'method was reset'