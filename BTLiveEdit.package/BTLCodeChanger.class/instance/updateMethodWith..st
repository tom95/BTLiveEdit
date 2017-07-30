helper
updateMethodWith: aString

	methodReference actualClass compile: aString classified: methodReference category notifying: nil.
	
	^ methodReference timeStamp