JSON
createJsonDictionary

	^ super createJsonDictionary
		at: #methodSource put: self methodSource;
		yourself