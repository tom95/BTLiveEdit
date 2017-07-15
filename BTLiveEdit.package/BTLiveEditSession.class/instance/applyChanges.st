as yet unclassified
applyChanges

	self eventsWithoutDuplicates
		select: [:event | event isFromDoIt]
		thenDo: [:event | self halt. event applyInSession: self]