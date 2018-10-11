*StarTrack-Client
exploreIt

	STTracker trackEvent: #exploreIt in: self model. 

	 self evaluateSelectionAndDo: [:result |
		(model respondsTo: #exploreIt:result:)
			ifTrue: [model
				perform: #exploreIt:result:
				with: self selection
				with: result]
			ifFalse: [result explore]].