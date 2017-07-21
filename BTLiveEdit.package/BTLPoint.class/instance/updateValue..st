as yet unclassified
updateValue: aString

	| parts |
	parts := aString splitBy: '@'.
	parts size = 2 ifTrue: [[ | point |
		point := parts first asNumber @ parts second asNumber.
		self widget perform: self selector with: point] on: NumberParserError do: []]