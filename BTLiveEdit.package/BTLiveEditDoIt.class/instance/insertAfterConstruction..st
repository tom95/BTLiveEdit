as yet unclassified
insertAfterConstruction: aConstructionSourceEvent

	| newSource oldSource |
	self flag: #todo. " check method timestamp to prevent overwriting user changes "
	oldSource := aConstructionSourceEvent sourceMethodString.
	
	newSource := String streamContents: [:stream |
		stream
			nextPutAll: (oldSource first: aConstructionSourceEvent sourceRange stop);
			nextPut: $;;
			space;
			nextPutAll: self sourceWithoutReceiver;
			nextPutAll: (oldSource allButFirst: aConstructionSourceEvent sourceRange stop)].
	
	self
		updateMethod: aConstructionSourceEvent sourceSelector
		of: aConstructionSourceEvent sourceInstance class
		with: newSource