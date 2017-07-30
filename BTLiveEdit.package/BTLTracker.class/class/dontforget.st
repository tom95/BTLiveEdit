as yet unclassified
dontforget

	(Installer ss project: 'rb') install: 'AST-Core'.
	
	self keys select: [:key | key size < 2] thenDo: [:key | self removeKey: key].
	
"method := (Parser new parse: oldSource class: nil class noPattern: false notifying: nil ifFail: nil) generate; yourself.
node := (method encoder rawSourceRanges associationsSelect: [:association | association value = range]) keys anyOne."