as yet unclassified
sourceWithComputedArguments

	^ String streamContents: [:stream  |
			self selector keywords with: self arguments do: [:keyword :argument |
				stream nextPutAll: keyword; space.
				argument storeOn: stream]]