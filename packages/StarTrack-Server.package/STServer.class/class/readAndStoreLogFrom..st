request handling
readAndStoreLogFrom: logStream

	| logObject fileName id now |
	logObject := Json readFrom: logStream.
	id := logObject at: STTrackedIncident participantIdFieldName.
	self serverDataDirectory assureExistenceOfPath: id asString.
	now := TimeStamp now.
	fileName := id asString , '-' , now asUnixTime asString , now nanoSecond , '.json'.
	(self serverDataDirectory directoryNamed: id asString) newFileNamed: fileName do: [:str | | jsonLogContent |
		jsonLogContent :=  Json render: (logObject at: STTrackedIncident logDataFieldName).
		str nextPutAll: jsonLogContent].
	^ true