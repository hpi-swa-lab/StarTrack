JSON
createJsonDictionary

	^ super createJsonDictionary
		at: #duration put: self duration;
		yourself