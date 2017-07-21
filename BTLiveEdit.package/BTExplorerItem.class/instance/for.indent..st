as yet unclassified
for: anExplorerWrapper indent: parentIndent

	indent := parentIndent + 1.
	
	self padding: (Rectangle left: indent * self indentSize right: 0 top: 0 bottom: 0).
	
	key text: anExplorerWrapper item key asString escapeEntities.
	value text: anExplorerWrapper item value asString escapeEntities.
	wrapper := anExplorerWrapper