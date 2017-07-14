as yet unclassified
testInstallAllUninstallAll

	BTLiveEditTracker installAll.
	
	self assert: BTLiveEditTracker equals: (BTLTestObject methodDict at: #align:) class.
	self assert: BTLiveEditTracker equals: (BTLiveEditTest methodDict at: #dummyEditableMethod:) class.
	
	BTLiveEditTracker uninstallAll.
	
	self assert: (BTLTestObject methodDict at: #align:) class ~= BTLiveEditTracker description: 'method was reset'.
	self assert: (BTLiveEditTest methodDict at: #dummyEditableMethod:) class ~= BTLiveEditTracker description: 'method was reset'