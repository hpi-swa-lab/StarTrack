system startup
startUp: isResuming

	self ensureScheduledTask.
	
	isResuming ifTrue: [self instance trackEvent: #started].