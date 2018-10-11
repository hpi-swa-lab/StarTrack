JSON
jsonWriteOn: aStream

	| dictionary |
	dictionary := Dictionary newFrom: {
		#name -> self eventName.
		#at -> self occuredAt asString
	}.
	self trackedClassName isEmptyOrNil ifFalse: [
		dictionary at: #cls put: self trackedClassName].
	
	self trackedObjectName isEmptyOrNil ifFalse: [
		dictionary at: #obj put: self trackedObjectName].
	
	dictionary jsonWriteOn: aStream