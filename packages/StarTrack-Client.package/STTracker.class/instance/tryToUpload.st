uploading
tryToUpload

	| response candidates payload |
	
	self events size > self eventsUploadThreshold ifTrue: [
		[self events size > 0] whileTrue: [
			eventsMutex critical: [
			candidates := self events first: (self uploadBatchSize min: self events size)].
		
			payload := self createUploadPayloadFor: candidates.
			
			[response := WebClient httpPost: self starTrackEndpoint content: payload type: 'text/json']
				on: Error
				do: [:e | ^ self ].
				
			response isSuccess 
				ifTrue: [self removeEvents: candidates]
				ifFalse: [^ self]]]
		