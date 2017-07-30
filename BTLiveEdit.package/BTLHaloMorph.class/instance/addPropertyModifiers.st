as yet unclassified
addPropertyModifiers

	self targetLiveEditablePropertiesDo: [:pragma | | propertyModifierClass selector arguments |
		propertyModifierClass := Smalltalk at: pragma arguments first.
		
		" transform e.g. liveEditable:with: into for:selector:with: "
		selector := (#(for: selector:), pragma keyword keywords allButFirst) join asSymbol.
		arguments := {self target. pragma selector}, pragma arguments allButFirst.
		propertyModifiers add: (propertyModifierClass perform: selector withArguments: arguments) buildWithLabel]