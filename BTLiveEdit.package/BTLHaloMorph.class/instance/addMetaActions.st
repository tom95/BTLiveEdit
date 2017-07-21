as yet unclassified
addMetaActions

	propertyModifiers add: (BTButtonGroup new
		add: ((BTButton icon: #trash)
			colorType: #danger;
			small;
			when: #clicked send: #delete to: self target);
		add: ((BTButton icon: #wrench)
			when: #clicked send: #explore to: self target;
			small)).