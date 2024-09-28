JSON
createJsonDictionary

	^ super createJsonDictionary
		at: #errorMessage put: self errorMessage;
		yourself