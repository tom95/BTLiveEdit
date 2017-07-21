as yet unclassified
build

	| button |
	button := (BTButton icon: #circle)
		small;
		colorScheme: (BTColorScheme
			withForeground: self currentValue
			background: Color transparent
			border: (BTColorScheme secondary: #normal) border)
		yourself.
	
	FRTColorPicker new
		when: #colorSelected send: #color: to: button;
		when: #colorSelected send: self selector to: self widget;
		attachTo: button.
	
	^ button