initialize-release
initialize

	eventsMutex := Mutex new.
	self events: OrderedCollection new.