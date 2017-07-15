as yet unclassified
eventsWithoutDuplicates

	| latestEdits |
	" if we iterate in forward order, we will only get the newest sends of each message to each instance, which is exactly what we want "
	latestEdits := Dictionary new.
	
	self events do: [:event |
		latestEdits at: (event instance hash bitXor: event selector hash) put: event].
	
	^ latestEdits asOrderedCollection