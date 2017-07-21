as yet unclassified
dontforget

	(Installer ss project: 'rb') install: 'AST-Core'.
	
"method := (Parser new parse: oldSource class: nil class noPattern: false notifying: nil ifFail: nil) generate; yourself.
node := (method encoder rawSourceRanges associationsSelect: [:association | association value = range]) keys anyOne."