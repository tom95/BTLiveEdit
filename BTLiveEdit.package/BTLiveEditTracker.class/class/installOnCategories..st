as yet unclassified
installOnCategories: aCollection

	| session |
	session := BTLiveEditSession new.
	self classesInCategories: aCollection do: [:class | self installOn: class for: session].
	^ session