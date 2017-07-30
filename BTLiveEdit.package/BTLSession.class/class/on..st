as yet unclassified
on: aWidget

	| session |
	session := self new.
	aWidget when: #deleted send: #end to: session.
	^ BTLTracker installAllFor: session