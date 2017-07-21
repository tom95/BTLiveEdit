as yet unclassified
build

	^ BTTextArea new
		text: self currentValue asString;
		when: #changed send: #updateValue: to: self