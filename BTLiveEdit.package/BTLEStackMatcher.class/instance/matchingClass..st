as yet unclassified
matchingClass: aClassSymbol

	" check if the matching class exists in this environment, otherwise leave the matchingClass at nil "
	matchingClass := Smalltalk at: aClassSymbol ifAbsent: []