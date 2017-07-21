as yet unclassified
doIt: aString withReceiver: anObjectOrNil

	anObjectOrNil class evaluatorClass new 
		evaluate: aString
		in: nil "context"
		to: anObjectOrNil
		environment: Smalltalk globals
		notifying: nil
		ifFail: [self error: 'invalid string passed']
		logged: false