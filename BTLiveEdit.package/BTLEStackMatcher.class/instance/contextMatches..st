as yet unclassified
contextMatches: aContext

	^ (aContext receiver isKindOf: matchingClass) and: [selectors isNil or: [selectors includes: aContext selector]]