accessing
removeEvents: aCollectionOfEvents

	eventsMutex critical: [self events removeAll: aCollectionOfEvents]