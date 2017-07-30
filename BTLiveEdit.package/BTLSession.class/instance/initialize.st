as yet unclassified
initialize

	super initialize.
	
	events := OrderedCollection new.
	applyImmediately := false.
	checkImmutable := [:class :selector | false]