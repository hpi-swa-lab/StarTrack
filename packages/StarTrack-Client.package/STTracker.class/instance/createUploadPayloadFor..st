uploading
createUploadPayloadFor: aCollectionOfEvents

	^ Json render: (Dictionary newFrom: {
		STTrackedIncident participantIdFieldName -> self userIdentifier.
		STTrackedIncident logDataFieldName -> aCollectionOfEvents. })