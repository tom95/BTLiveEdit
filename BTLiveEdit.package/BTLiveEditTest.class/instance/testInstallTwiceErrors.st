as yet unclassified
testInstallTwiceErrors

	BTLTracker installOnCategories: #('BTLiveEdit-TestData').
	self should: [BTLTracker installOnCategories: #('BTLiveEdit-TestData')] raise: Error