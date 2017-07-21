as yet unclassified
modifierBoxFor: aSelector widget: aWidget

	^ BTPage new
		spacing: BTWidget spacing / 4;
		vertical: false;
		add: (BTLabel new
			text: aSelector capitalized;
			minSize: self labelWidth @ 0);
		add: aWidget