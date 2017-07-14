as yet unclassified
classesInCategories: aCollection do: aBlock

	Smalltalk allClassesDo: [:class |
		(aCollection includes: class category) ifTrue: [aBlock value: class]]