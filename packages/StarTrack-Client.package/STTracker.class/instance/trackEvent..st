tracking
trackEvent: eventSymbol

	self addEvent: (STTrackedIncident new
		eventName: eventSymbol asSymbol;
		occuredAt: DateAndTime now)