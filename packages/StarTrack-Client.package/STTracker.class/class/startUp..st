system startup
startUp: isResuming

	self ensureScheduledTask.
	
	isResuming ifTrue: [
		self instance ensureAcceptanceOfTerms.
		self instance trackEvent: #started].