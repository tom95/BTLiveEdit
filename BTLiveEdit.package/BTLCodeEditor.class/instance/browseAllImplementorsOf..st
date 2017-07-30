as yet unclassified
browseAllImplementorsOf: aSymbol

	| bestFit references |
	references := self systemNavigation allImplementorsOf: aSymbol.
	
	references ifEmpty: [textMorph flash. ^ self].
	
	bestFit := references
		detect: [:reference | reference actualClass == selectedClass]
		ifNone: [
			references
				detect: [:reference | selectedClass inheritsFrom: reference actualClass]
				ifNone: [UIManager default chooseFrom: (references collect: #asStringOrText) values: references]].
	
	self class edit: bestFit selector of: bestFit actualClass