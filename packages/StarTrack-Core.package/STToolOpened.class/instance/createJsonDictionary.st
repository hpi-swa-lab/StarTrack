JSON
createJsonDictionary

	^ super createJsonDictionary
		at: #shownObject put: self shownObject;
		at: #toolName put: self toolName;
		yourself