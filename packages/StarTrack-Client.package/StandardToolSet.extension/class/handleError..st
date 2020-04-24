*StarTrack-Client
handleError: anError
	"Double dispatch. Let the active process take care of that error, which usually calls back here to #debugProcess:..."

	STTracker trackEvent: #displayException in: anError.
	^ Processor activeProcess
		debug: anError signalerContext
		title: anError description