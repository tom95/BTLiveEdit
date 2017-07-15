as yet unclassified
buildNewMessageSendWithin: aMethod with: anArgumentCollection at: anInterval

	| changedMessageSend |
	" cant have unary message sends, since they dont make sense here "
	changedMessageSend := (String streamContents: [:stream | 
		self selector isBinary
			ifTrue: [
				stream nextPutAll: self selector; space.
				anArgumentCollection first storeOn: stream]
			ifFalse: [
				((self selector asString splitBy: ':') reject: #isEmpty) with: anArgumentCollection do: [:messagePart :argument |
					stream nextPutAll: messagePart; nextPutAll: ': '.
					argument storeOn: stream.
					stream space]]]) withBlanksTrimmed.

	^ aMethod getSourceFromFile copyReplaceFrom: anInterval start to: anInterval stop with: changedMessageSend