uploading
tryToUpload

	| response |
	eventsMutex critical: [
		self events size > self eventsUploadThreshold ifTrue: [
			[response := WebClient httpPost: self starTrackEndpoint content: self uploadPayload type: 'text/json']
				on: Error
				do: [:e | 
					Transcript showln: e messageText.
					^ self ].
				
			response isSuccess 
				ifTrue: [self resetEvents]
				ifFalse: [Transcript showln: response content]]]
		