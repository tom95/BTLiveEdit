as yet unclassified
locateInstance: anObject

	^ self events
		detect: [:event | event isFromSource and: [event instance == anObject and: [event selector == #new]]]
		ifFound: [:event | event openInBrowser]