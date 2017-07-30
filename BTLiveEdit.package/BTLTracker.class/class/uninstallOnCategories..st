as yet unclassified
uninstallOnCategories: aCollection

	BTLTracker allInstancesDo: [:tracker | (aCollection includes: tracker reference actualClass category) ifTrue: [tracker uninstall]]