server control
stopServer

	Smalltalk at: #StarTrackServer ifAbsent: [^ self].
	(Smalltalk at: #StarTrackServer) destroy.
	Smalltalk removeKey: #StarTrackServer.
	
	