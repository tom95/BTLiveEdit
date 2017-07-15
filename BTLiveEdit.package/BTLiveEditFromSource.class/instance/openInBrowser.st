as yet unclassified
openInBrowser

	| browser |
	browser := (Browser fullOnClass: self sourceInstance class selector: self sourceSelector)
	browser codeTextMorph setSelection: self sourceRange.
	^ browser