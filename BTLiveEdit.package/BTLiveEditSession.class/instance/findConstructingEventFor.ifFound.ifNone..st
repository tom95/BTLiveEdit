as yet unclassified
findConstructingEventFor: anObject ifFound: aBlock ifNone: anotherBlock

	^ self constructionEvents detect: [:event | event instance == anObject] ifFound: aBlock ifNone: anotherBlock