system shutdown
shutDown: quitting

	quitting ifTrue: [
		self instance
			trackEvent: #quitting;
			tryToUpload]
	