accessing
methodString: aSymbol of: aClass

	^ (aClass methodDictionary at: aSymbol) getSourceFromFile