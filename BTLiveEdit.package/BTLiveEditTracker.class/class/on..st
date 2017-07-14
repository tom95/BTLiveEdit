as yet unclassified
on: aMethodReference

	aMethodReference compiledMethod class = self ifTrue: [^ self error: 'Trying to wrap a method twice!'].
	
	^ self new initializeOn: aMethodReference