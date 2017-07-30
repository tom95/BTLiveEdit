as yet unclassified
updateValue: aString

	| value success |
	success := false.
	[value := self class evaluatorClass new
			evaluate: aString
			in: nil
			to: nil
			environment: Smalltalk globals
			notifying: nil
			ifFail: []
			logged: false.
		success := true] on: Error do: [].
	
	success ifTrue: [self widget perform: self selector with: value]