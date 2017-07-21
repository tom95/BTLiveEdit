as yet unclassified
tryUpdating: aSymbol of: aClass withMessageSend: aBlock
	" given a block that takes the selector plus arguments part of a message send and places it in the method, try compiling this method and if that fails, try again while replacing variables in the message send part "

	[self updateMethod: aSymbol of: aClass with: (aBlock value: self sourceWithoutReceiver)]
		on: UndeclaredVariableWarning
		do: [:e | self error: 'a.'.self updateMethod: aSymbol of: aClass with: (aBlock value: self sourceWithComputedArguments)]