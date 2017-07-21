as yet unclassified
run: aSelector with: anArray in: aReceiver

	| context |
	context := thisContext sender.
	
	session registerEvent: (context method getSourceFromFile
		ifNotNilDo: [:source | 
			BTLiveEditFromSource newFromContext: context receiver: aReceiver arguments: anArray selector: aSelector]
		ifNil: [ | cue |
			" go up until we find the #DoIt that is sent to UndefinedObject"
			[context selector == #DoIt] whileFalse: [context := context sender].
			" the message send just above in the stack contains the Compiler object used to compile our do-it.
			  inside its `cue` we find the original source string that was executed "
			cue := context sender receiver instVarNamed: #cue.
			
			BTLiveEditDoIt new
				instance: aReceiver;
				selector: aSelector;
				arguments: anArray;
				source: cue sourceStream contents;
				sourceReceiverContext: cue receiver;
				yourself]).
	
	^ aReceiver withArgs: anArray executeMethod: method