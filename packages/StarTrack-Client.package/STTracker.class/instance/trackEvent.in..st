tracking
trackEvent: eventSymbol in: anObject

	self addEvent: (STTrackedIncident new
		eventName: eventSymbol asSymbol;
		trackedClassName: anObject className;
		trackedObjectName: anObject className asString , anObject identityHash asString;
		occuredAt: DateAndTime now)