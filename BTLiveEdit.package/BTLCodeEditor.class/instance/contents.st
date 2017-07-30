as yet unclassified
contents

	^ selectedClass ifNotNil: [
		selectedClass
			ultimateSourceCodeAt: selectedSelector
			ifAbsent: [self error: 'source not available']]