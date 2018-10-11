server control
startServer

	| server |
	((Smalltalk includesKey: #StarTrackServer) not or: [(Smalltalk at: #StarTrackServer) isNil])
		ifTrue: [
			server := WebServer new.
			server listenOn: self serverPort.
			server addService: '/tracking' action: [:request | self handleNewLogFrom: request].
			Smalltalk at: #StarTrackServer put: server]
		ifFalse: ["Server exists. No reason to start"]
	
	