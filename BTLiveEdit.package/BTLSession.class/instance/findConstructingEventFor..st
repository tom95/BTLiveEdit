as yet unclassified
findConstructingEventFor: anObject

	^ self
		findConstructingEventFor: anObject
		ifFound: #yourself
		ifNone: [self error: 'no construction location found for given object']