JSON
createJsonDictionary

	^ super createJsonDictionary
		at: #key put: self key;
		yourself