uploading
storeEventsLocally: aCollectionOfEvents

	| fileName folderName |
	LRExperimentState instance runId ifNil: [
		self error: 'experiment state not ready for serializing events'].

	folderName := 'starTrackData-' , LRExperimentState instance runId asString.
	(FileDirectory default / 'dfg') assureExistenceOfPath: folderName.
	fileName := LRExperimentState instance runId asString asString , '-' , TimeStamp now asUnixTime asString , '.json'.
	(FileDirectory default / 'dfg' / folderName) newFileNamed: fileName do: [:stream | 
		stream nextPutAll: (Json render: aCollectionOfEvents)].