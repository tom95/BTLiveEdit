as yet unclassified
extractSource: aContext
	" return pair of source and source receiver or {nil. nil} "

	^ sourceExtractDo ifNotNil: [sourceExtractDo value: aContext] ifNil: [#(nil nil)]