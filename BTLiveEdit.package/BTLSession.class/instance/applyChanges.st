as yet unclassified
applyChanges

	self eventsWithoutDuplicates
		select: [:event | event isLiveEditEvent]
		thenDo: [:event | self halt. event applyInSession: self]