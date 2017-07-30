as yet unclassified
initialize

	super initialize.
	
	self color: Color green.
	
	propertyModifiers := BTLDarkPage new
		vertical: true;
		spacing: BTWidget spacing / 4;
		padding: BTWidget spacing / 2;
		hasDropShadow: true;
		color: (Color fromString: '#333333');
		shadowOffset: (10 @ 10 corner: 10 @ 10);
		shadowColor: (Color black alpha: 0.01)