as yet unclassified
installAll

	| session |
	session := BTLiveEditSession new.
	Smalltalk allClassesDo: [:class | self installOn: class for: session].
	^ session