as yet unclassified
applyChangesFor: anObject

	self eventsWithoutDuplicates
		select: [:event | event isLiveEditEvent and: [event instance == anObject]]
		thenDo: [:event | event applyInSession: self]