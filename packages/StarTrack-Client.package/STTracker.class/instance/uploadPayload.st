uploading
uploadPayload

	^ Json render: (Dictionary newFrom: {
		STTrackedIncident participantIdFieldName -> self userIdentifier.
		STTrackedIncident logDataFieldName -> self events asArray. })