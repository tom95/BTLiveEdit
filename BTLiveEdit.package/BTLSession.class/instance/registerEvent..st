as yet unclassified
registerEvent: aLiveEditEvent

	(self applyImmediately and: [aLiveEditEvent isLiveEditEvent])
		ifTrue: [aLiveEditEvent applyInSession: self].

	(aLiveEditEvent isApplicationEvent and: [self isImmutable: aLiveEditEvent selector of: aLiveEditEvent instance class])
		ifFalse: [self events add: aLiveEditEvent]