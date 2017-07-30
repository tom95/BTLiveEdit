as yet unclassified
tearDown

	BTLTracker uninstallOnCategories: #('BTLiveEdit-TestData').
	
	toBeReset do: [:assoc | | category reference source |
		reference := assoc key.
		source := assoc value.
		
		category := reference actualClass whichCategoryIncludesSelector: reference selector.
		reference actualClass compile: source classified: category]