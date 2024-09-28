JSON
createJsonDictionary

	^ super createJsonDictionary
		at: #taskId put: self taskId;
		yourself