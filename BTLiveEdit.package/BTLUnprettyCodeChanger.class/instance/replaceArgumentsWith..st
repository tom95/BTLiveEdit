as yet unclassified
replaceArgumentsWith: aMessageSendString

	| oldSource newTimestamp |
	oldSource := self oldSource.
	
	newTimestamp := self updateMethodWith: (String streamContents: [:stream |
		stream
			nextPutAll: (oldSource first: sourceInterval start - 1);
			nextPutAll: aMessageSendString;
			nextPutAll: (oldSource allButFirst: sourceInterval stop)]).
	
	self affectedApplicationEventsDo: [:event |
		event sourceInterval start > sourceInterval start ifTrue: [
			event
				sourceInterval: event sourceInterval + (aMessageSendString size - sourceInterval size);
				timeStamp: newTimestamp]]