as yet unclassified
mouseMove: anEvent

	| delta |
	(lastPosition notNil and: [(self wrapper item value isKindOf: Number)]) ifTrue: [
		delta := (anEvent position - lastPosition) x.
		Transcript show: delta; cr.
		lastPosition := anEvent position.
		value changed.
		value text: value text asNumber + delta]