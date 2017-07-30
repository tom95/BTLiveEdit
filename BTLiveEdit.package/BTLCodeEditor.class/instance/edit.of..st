as yet unclassified
edit: aSymbol of: aClass

	selectedClass := aClass.
	selectedSelector := aSymbol.
	
	self changed: #contents.
	"textMorph extent: self defaultWidth @ 100.
	self extent: textMorph textMorph paragraph extent"