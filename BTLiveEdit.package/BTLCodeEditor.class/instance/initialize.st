as yet unclassified
initialize

	super initialize.
	
	self
		color: (self userInterfaceTheme get: #uniformWindowColor for: Model);
		changeTableLayout;
		addMorph: ((textMorph := PluggableTextMorphPlus
				on: self
				text: #contents
				accept: #save:
				readSelection: #selected
				menu: nil)
			useDefaultStyler;
			hScrollBarPolicy: #never;
			vScrollBarPolicy: #never;
			vResizing: #spaceFill;
			hResizing: #spaceFill;
			yourself)