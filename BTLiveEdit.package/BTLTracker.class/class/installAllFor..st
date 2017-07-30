as yet unclassified
installAllFor: aSession

	Smalltalk allClassesDo: [:class | self installOn: class for: aSession].
	^ aSession