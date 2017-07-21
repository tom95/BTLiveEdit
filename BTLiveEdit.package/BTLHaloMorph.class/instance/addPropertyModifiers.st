as yet unclassified
addPropertyModifiers

	self targetLiveEditablePropertiesDo: [:pragma | | propertyModifierClass selector arguments modifierWidget |
		propertyModifierClass := Smalltalk at: pragma arguments first.
		
		" transform e.g. liveEditable:with: into for:selector:with: "
		selector := (#(for: selector:), pragma keyword keywords allButFirst) join asSymbol.
		arguments := {self target. pragma selector}, pragma arguments allButFirst.
		modifierWidget := (propertyModifierClass perform: selector withArguments: arguments) build.
		
		propertyModifiers add: (self modifierBoxFor: pragma selector widget: modifierWidget)]