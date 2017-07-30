as yet unclassified
save: aString

	| category |
	category := selectedClass whichCategoryIncludesSelector: selectedSelector.
	selectedClass compile: aString classified: category notifying: nil.
	
	self changed: #contents