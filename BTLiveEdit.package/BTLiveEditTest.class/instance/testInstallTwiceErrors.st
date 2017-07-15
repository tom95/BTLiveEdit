as yet unclassified
testInstallTwiceErrors

	BTLiveEditTracker installOnCategories: #('BTLiveEdit-TestData').
	self should: [BTLiveEditTracker installOnCategories: #('BTLiveEdit-TestData')] raise: Error