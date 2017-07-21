as yet unclassified
applyInSession: aSession

	aSession
		findSourceEventMatching: self
		ifFound: [:sourceEvent | sourceEvent applyChangeFrom: self]
		ifNone: [
			aSession
				findConstructingEventFor: self instance
				ifFound: [:constructionEvent | self insertAfterConstruction: constructionEvent]
				ifNone: [self insertInConstructor]]