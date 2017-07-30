as yet unclassified
edit: aSymbol of: aClass

	| editor window |
	editor := self new edit: aSymbol of: aClass.
	window := (SystemWindow labelled: aClass name, '>>', aSymbol)
		addMorph: editor fullFrame: (LayoutFrame fractions: (0 @ 0 extent: 1 @ 1) offsets: (self inset asPoint corner: self inset negated asPoint));
		openInWorld.
	
	window extent: editor textSize + (self inset asPoint * 4) + (0 @ window labelHeight).
	
	^ editor