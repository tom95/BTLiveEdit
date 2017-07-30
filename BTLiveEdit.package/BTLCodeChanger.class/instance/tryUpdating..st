helper
tryUpdating: aBlock

	(session checkImmutable value: methodReference actualClass value: methodReference selector) ifFalse: [
		[aBlock value: liveEditEvent sourceWithoutReceiver]
			on: UndeclaredVariableWarning
			do: [:e | aBlock value: liveEditEvent sourceWithComputedArguments]]