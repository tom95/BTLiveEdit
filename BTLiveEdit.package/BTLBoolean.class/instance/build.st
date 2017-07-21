as yet unclassified
build

	^ BTCheckbox new
		checked: self currentValue;
		when: #toggled send: self selector to: self widget;
		yourself