as yet unclassified
openInBrowser

	| browser |
	browser := (Browser fullOnClass: BTLiveEditFromSource selector: #openInBrowser)
	browser codeTextMorph setSelection: self sourceRange.
	^ browser