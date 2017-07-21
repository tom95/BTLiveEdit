as yet unclassified
build

	^ BTTextArea new
		text: self currentValue;
		when: #changed send: self selector to: self widget