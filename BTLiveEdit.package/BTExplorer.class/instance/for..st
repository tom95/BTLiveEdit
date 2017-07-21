as yet unclassified
for: anObject

	self add: (BTExplorerItem new for: (ObjectExplorerWrapper with: anObject name: 'root' model: anObject) indent: -1)