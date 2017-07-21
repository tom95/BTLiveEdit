as yet unclassified
addedMorph: anItem

	| width |
	super addedMorph: anItem.
	
	width := anItem labelWidth.
	width > currentMaxWidth ifTrue: [
		self submorphsDo: [:morph | morph key minSize: width - morph padding left @ 0]].
	
	currentMaxWidth := width