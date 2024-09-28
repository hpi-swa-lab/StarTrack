uploading
storeEvents: aCollectionOfEvents

	self isStoringEventsLocally 
		ifTrue: [self storeEventsLocally: aCollectionOfEvents]
		ifFalse: [self storeEventsRemote: aCollectionOfEvents]