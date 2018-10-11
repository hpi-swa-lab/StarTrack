accessing
addEvent: anEvent

	[eventsMutex critical: [self events addLast: anEvent]] forkAt: Processor userBackgroundPriority