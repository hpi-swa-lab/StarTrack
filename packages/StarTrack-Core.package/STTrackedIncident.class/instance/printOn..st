printing
printOn: aStream

	aStream << 'st event: ' << self eventName asString << String space << self trackedObjectName asString