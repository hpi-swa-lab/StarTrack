uploading
doUpload

	| candidates |
	[self events size > 0] whileTrue: [
		eventsMutex critical: [
		candidates := self events first: (self uploadBatchSize min: self events size)].
		
		[self storeEvents: candidates]
			on: Error
			do: [:e | ^ self].
		
		self removeEvents: candidates]
		