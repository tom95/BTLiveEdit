as yet unclassified
forClass: aClassSymbol selectors: aCollection

	^ self new
		matchingClass: aClassSymbol;
		selectors: aCollection;
		yourself