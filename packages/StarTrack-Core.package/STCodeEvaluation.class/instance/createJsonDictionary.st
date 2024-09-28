JSON
createJsonDictionary

	^ super createJsonDictionary
		at: #expression put: self expression;
		at: #kindOfEvaluation put: self kindOfEvaluation;
		yourself