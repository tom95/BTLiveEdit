events
findSourceEventMatching: aBTLiveEditDoIt ifFound: aBlock ifNone: anotherBlock
	
	^ self events
		detect: [:event | event isFromSource and: [event instance == aBTLiveEditDoIt instance and: [event selector == aBTLiveEditDoIt selector]]]
		ifFound: aBlock
		ifNone: anotherBlock