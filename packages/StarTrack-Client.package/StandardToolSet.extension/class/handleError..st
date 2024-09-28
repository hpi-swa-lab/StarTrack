*StarTrack-Client
handleError: anError
	"Double dispatch. Let the processor take care of that error, which usually calls back here to #debugProcess:..."

	STTracker trackEventObject: (STDebuggerOpened new
		toolName: #Debugger;
		shownObject: anError;
		errorMessage: anError messageText;
		yourself).
	^ Processor
		debugContext: anError signalerContext
		title: anError description
		full: false
		contents: nil