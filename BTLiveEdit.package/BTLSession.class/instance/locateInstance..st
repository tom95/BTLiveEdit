as yet unclassified
locateInstance: anObject

	^ self events
		detect: [:event | event isApplicationEvent and: [event instance == anObject and: [event selector == #new]]]
		ifFound: [:event | event openInBrowser]