as yet unclassified
initialize

	super initialize.
	
	indent := 0.
	
	self
		vertical: false;
		withLayout;
		add: (key := BTLabel new ellipsize: #end;  bold);
		add: (value := BTLabel new ellipsize: #end)