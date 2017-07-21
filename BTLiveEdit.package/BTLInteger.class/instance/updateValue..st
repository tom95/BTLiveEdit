as yet unclassified
updateValue: aString

	[self widget perform: self selector with: aString asNumber] on: NumberParserError do: []