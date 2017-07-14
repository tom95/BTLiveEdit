as yet unclassified
uninstallOnCategories: aCollection

	BTLiveEditTracker allInstancesDo: [:tracker | (aCollection includes: tracker reference actualClass category) ifTrue: [tracker uninstall]]