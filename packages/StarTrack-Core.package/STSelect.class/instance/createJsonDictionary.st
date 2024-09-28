JSON
createJsonDictionary

	^ super createJsonDictionary
		at: #kindOfObject put: self kindOfObject;
		at: #selectedObject put: self selectedObject;
		yourself