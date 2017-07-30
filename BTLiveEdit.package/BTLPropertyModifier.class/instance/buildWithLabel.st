as yet unclassified
buildWithLabel

	self
		spacing: BTWidget spacing / 4;
		vertical: false;
		add: (BTLabel new
			text: self selector capitalized;
			minSize: self labelWidth @ 0);
		add: self build