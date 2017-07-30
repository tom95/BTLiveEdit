accessing
applyChangeFrom: aBTLEventLiveEdit in: aBTLSession 
	
	self checkMethodTimestamp.
	
	aBTLSession class codeChangerClass new
		session: aBTLSession;
		methodReference: (MethodReference class: self sourceInstance class selector: self sourceSelector);
		sourceInterval: self sourceInterval;
		liveEditEvent: aBTLEventLiveEdit;
		replaceArguments