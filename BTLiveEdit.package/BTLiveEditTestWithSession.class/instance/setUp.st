as yet unclassified
setUp

	toBeReset := OrderedCollection new.
	session := (BTLTracker installOnCategories: #('BTLiveEdit-TestData'))
		checkImmutable: [:class :selector | class category == 'BTLiveEdit-Tests'];
		yourself