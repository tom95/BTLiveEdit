as yet unclassified
installOnCategories: aCollection for: aSession

	self classesInCategories: aCollection do: [:class | self installOn: class for: aSession].
	^ aSession