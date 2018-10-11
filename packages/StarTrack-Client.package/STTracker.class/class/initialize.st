class initialization
initialize
	"STTracker initialize"

	Smalltalk 
		addToStartUpList: self;
		addToShutDownList: self.
	self 
		ensureGlobalInstance;
		ensureScheduledTask