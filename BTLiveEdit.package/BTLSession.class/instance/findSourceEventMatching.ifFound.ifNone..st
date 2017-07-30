events
findSourceEventMatching: aBTLiveEditDoIt ifFound: aBlock ifNone: anotherBlock
	
	^ self events
		detect: [:event | event isApplicationEvent and: [event instance == aBTLiveEditDoIt instance and: [event selector == aBTLiveEditDoIt selector]]]
		ifFound: aBlock
		ifNone: anotherBlock