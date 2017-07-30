as yet unclassified
build

	^ BTTextArea new
		text: self currentValue storeString;
		when: #changed send: #updateValue: to: self