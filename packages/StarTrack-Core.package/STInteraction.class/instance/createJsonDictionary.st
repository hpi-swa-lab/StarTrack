JSON
createJsonDictionary

	^ super createJsonDictionary
		at: #toolClass put: self inToolClass;
		at: #inToolInstance put: self inToolInstance;
		yourself