as yet unclassified
sourceWithoutReceiver

	| messageNode |
	" the parser places our call in a DoIt block with a return node "
	messageNode := (Parser new parse: self source class: nil class noPattern: true notifying: nil ifFail: nil) block statements first expr.
	
	^ (String streamContents: [:stream |
		messageNode printKeywords: messageNode selector key arguments: messageNode arguments on: stream indent: 0]) withBlanksTrimmed