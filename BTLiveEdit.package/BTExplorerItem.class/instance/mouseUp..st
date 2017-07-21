as yet unclassified
mouseUp: anEvent

	lastPosition := nil.
	children ifNil: [
		self expandItem]