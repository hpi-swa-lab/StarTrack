uploading
storeEventsRemote: aCollectionOfEvents

	| payload response |
	payload := self createUploadPayloadFor: aCollectionOfEvents.

	response := WebClient 
		httpPost: self starTrackEndpoint 
		content: payload type: 'text/json'.

	response isSuccess ifFalse: [NetworkError signal].