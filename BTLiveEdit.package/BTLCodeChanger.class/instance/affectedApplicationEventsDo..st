helper
affectedApplicationEventsDo: aBlock

	session events do: [:event | event isApplicationEvent ifTrue: [aBlock value: event]]