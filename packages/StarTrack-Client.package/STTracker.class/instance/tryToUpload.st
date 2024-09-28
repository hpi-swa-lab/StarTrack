uploading
tryToUpload

	self events size > self eventsUploadThreshold ifTrue: [
		self doUpload]