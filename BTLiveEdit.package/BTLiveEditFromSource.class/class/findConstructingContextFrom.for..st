as yet unclassified
findConstructingContextFrom: aContext for: anObject
	" take a guess on which stackframe this object was constructed outside the framework code by walking until
	  we're outside of its class's functions. This will fail whenever we deal with factories and the like "

	| context |
	context := aContext.
	[context receiver == anObject or: [context receiver == anObject class]] whileTrue: [context := context sender].
	^ context