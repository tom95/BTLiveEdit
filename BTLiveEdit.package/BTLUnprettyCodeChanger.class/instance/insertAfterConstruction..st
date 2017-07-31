as yet unclassified
insertAfterConstruction: aString

	| oldSource node method delta |
	oldSource := self oldSource.
	
	method := RBParser parseMethod: oldSource.
	node := method bestNodeFor: sourceInterval.
	
	self updateMethodWith: (String streamContents: [:stream |
		self flag: #todo. "based on AST analysis, we can determine whether we are in a cascade and then extend that cascade"
		stream
			nextPutAll: (oldSource first: node start - 1);
			nextPutAll: '(';
			nextPutAll: (oldSource copyFrom: node start to: node stop);
			space;
			nextPutAll: aString;
			nextPut: $);
			nextPutAll: (oldSource allButFirst: node stop)]).
	
	self flag: #todo. " transform the live-edit event into an application event, such that it can be updated later "
	delta := aString size + 3.
	self affectedApplicationEventsDo: [:event |
		event sourceInterval start > node start ifTrue: [
			event sourceInterval: event sourceInterval + delta]].
	
	"session registerEvent: (BTLEventApplication new
		instance: liveEditEvent instance;
		selector: liveEditEvent selector;
		arguments: liveEditEvent arguments;
		sourceSelector: methodReference selector;
		sourceInstance: 'this is missing :(';
		sourceInterval: (node stop + 1 to: aString size);
		timeStamp: methodReference timeStamp;
		yourself)"