as yet unclassified
registerEventFromContext: aContext liveEditEvent: aLiveEditBlock applicationEvent: anApplicationBlock

	self registerEvent: (self class liveEditMatchers
		detect: [:matcher | matcher matches: aContext]
		ifFound: [:matcher | aLiveEditBlock valueWithArguments: (matcher extractSource: aContext)]
		ifNone: anApplicationBlock)