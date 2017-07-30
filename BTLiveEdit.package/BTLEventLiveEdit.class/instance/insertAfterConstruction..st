as yet unclassified
insertAfterConstruction: aConstructionSourceEvent

	| newSource oldSource method node |
	aConstructionSourceEvent checkMethodTimestamp.
	
	oldSource := aConstructionSourceEvent sourceMethodString.
	
	method := RBParser parseMethod: oldSource.
	node := method bestNodeFor: aConstructionSourceEvent sourceInterval.
	
	newSource := String streamContents: [:stream |
		self flag: #todo. "based on AST analysis, we can determine whether we are in a cascade and then extend that cascade"
		stream
			nextPutAll: (oldSource first: node start - 1);
			nextPutAll: '(';
			nextPutAll: (oldSource copyFrom: node start to: node stop);
			space;
			nextPutAll: self sourceWithoutReceiver;
			nextPut: $);
			nextPutAll: (oldSource allButFirst: node stop)].
	
	self flag: #todo. " transform the live-edit event into an application event, such that it can be updated later "
	
	" in order to allow more edits to this method, we move the source range appropriately and update the timestamp "
	aConstructionSourceEvent sourceInterval: aConstructionSourceEvent sourceInterval + 2.
	aConstructionSourceEvent timeStamp: aConstructionSourceEvent method timeStamp.
	
	self
		updateMethod: aConstructionSourceEvent sourceSelector
		of: aConstructionSourceEvent sourceInstance class
		with: newSource