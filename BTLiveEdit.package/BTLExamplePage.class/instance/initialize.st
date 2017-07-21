as yet unclassified
initialize

	super initialize.
	
	self
		add: (BTPage new
			add: (alert := BTAlertDisplay new);
			add: (title := BTTextArea new);
			add: (text := BTTextArea new);
			add: (submit := BTButton new))