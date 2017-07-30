as yet unclassified
run: aSelector with: anArray in: aReceiver

	| context |
	context := thisContext sender.
	
	session
		registerEventFromContext: context
		liveEditEvent: [:source :sourceReceiver |
			BTLEventLiveEdit new
				instance: aReceiver;
				selector: aSelector;
				arguments: anArray;
				source: source;
				sourceReceiverContext: sourceReceiver;
				yourself]
		applicationEvent: [
			BTLEventApplication newFromContext: context receiver: aReceiver arguments: anArray selector: aSelector].
	
	^ aReceiver withArgs: anArray executeMethod: method