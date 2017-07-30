accessing
updateMethod: aSelector of: aClass with: aString

	| category |
	category := aClass whichCategoryIncludesSelector: aSelector.
	^ aClass compile: aString classified: category notifying: nil