as yet unclassified
installOn: aClass for: aSession

	(Pragma allNamed: #liveEditable in: aClass) do: [:pragma |
		(self on: (MethodReference class: aClass selector: pragma method selector)) installFor: aSession]