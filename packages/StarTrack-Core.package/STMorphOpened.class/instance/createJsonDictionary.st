JSON
createJsonDictionary

	^ super createJsonDictionary
		at: #morphClass put: self morphClass;
		at: #morphInstance put: self morphInstance;
		yourself