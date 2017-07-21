as yet unclassified
initialize

	super initialize.
	
	self color: Color green.
	
	propertyModifiers := BTPage new
		vertical: true;
		spacing: BTWidget spacing / 4;
		padding: BTWidget spacing / 2;
		color: Color white;
		hasDropShadow: true;
		shadowOffset: (10 @ 10 corner: 10 @ 10);
		shadowColor: (Color black alpha: 0.01)