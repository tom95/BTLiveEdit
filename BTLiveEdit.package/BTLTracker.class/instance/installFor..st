as yet unclassified
installFor: aSession

	session := aSession.
	reference actualClass methodDictionary at: reference methodSymbol put: self.
	
	aSession when: #end send: #uninstall to: self