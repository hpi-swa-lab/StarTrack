class initialization
initialize
	"STTracker initialize"

	Smalltalk addToStartUpList: self.
	self 
		ensureGlobalInstance;
		ensureScheduledTask