request handling
readAndStoreLogFrom: logStream

	| logObject fileName id |
	logObject := Json readFrom: logStream.
	id := logObject at: STTrackedIncident participantIdFieldName.
	self serverDataDirectory assureExistenceOfPath: id asString.
	fileName := id asString , '-' , TimeStamp now asUnixTime asString , STCounter nextNumberString , '.json'.
	(self serverDataDirectory directoryNamed: id asString) newFileNamed: fileName do: [:str | | jsonLogContent |
		jsonLogContent :=  Json render: (logObject at: STTrackedIncident logDataFieldName).
		str nextPutAll: jsonLogContent].
	^ true