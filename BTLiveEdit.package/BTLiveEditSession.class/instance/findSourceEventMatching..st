events
findSourceEventMatching: aBTLiveEditDoIt 
	
	^ self events detect: [:event | event isFromSource and: [event instance == aBTLiveEditDoIt instance and: [event selector == aBTLiveEditDoIt selector]]]