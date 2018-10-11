*StarTrack-Client
inspectIt

	STTracker trackEvent: #inspectIt in: self model. 

	 self evaluateSelectionAndDo: [:result |
		(model respondsTo: #inspectIt:result:)
			ifTrue: [model
				perform: #inspectIt:result:
				with: self selection
				with: result]
			ifFalse: [result inspect]].