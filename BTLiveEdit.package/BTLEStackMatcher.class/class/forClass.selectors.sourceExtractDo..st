as yet unclassified
forClass: aClassSymbol selectors: aCollection sourceExtractDo: aBlock

	^ self new
		matchingClass: aClassSymbol;
		selectors: aCollection;
		sourceExtractDo: aBlock;
		yourself