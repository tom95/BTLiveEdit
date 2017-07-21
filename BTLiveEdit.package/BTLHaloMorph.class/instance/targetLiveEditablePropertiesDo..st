as yet unclassified
targetLiveEditablePropertiesDo: aBlock 

	(Pragma allNamed: #liveEditable: from: self target class to: Object) do: aBlock.
	(Pragma allNamed: #liveEditable:from:to:step: from: self target class to: Object) do: aBlock.
	(Pragma allNamed: #liveEditable:with: from: self target class to: Object) do: aBlock