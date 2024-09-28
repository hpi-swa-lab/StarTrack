JSON
createJsonDictionary

	^ Dictionary newFrom: {
		#class -> self className.
		#name -> self eventName.
		#at -> self occuredAt asString }.
	