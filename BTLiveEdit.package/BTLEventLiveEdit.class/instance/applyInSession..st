as yet unclassified
applyInSession: aSession

	aSession
		findSourceEventMatching: self
		ifFound: [:sourceEvent | sourceEvent applyChangeFrom: self in: aSession]
		ifNone: [
			aSession
				findConstructingEventFor: self instance
				ifFound: [:constructionEvent | self insertAfterConstruction: constructionEvent]
				ifNone: [self insertInConstructor]]