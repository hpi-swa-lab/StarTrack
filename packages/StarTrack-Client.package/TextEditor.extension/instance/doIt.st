*StarTrack-Client
doIt
	"Set the context to include pool vars of the model.  Then evaluate."
	STTracker trackEvent: #doIt in: self model. 
	
	^ self evaluateSelection