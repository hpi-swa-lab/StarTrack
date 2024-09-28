tracking
trackEventObject: incidentObject

	self addEvent: (incidentObject
		occuredAt: DateAndTime now;
		yourself)