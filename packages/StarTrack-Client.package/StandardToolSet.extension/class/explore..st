*StarTrack-Client
explore: anObject

	STTracker trackEventObject: (STToolOpened new
		toolName: #Explorer;
		shownObject: anObject;
		yourself).
	^ ObjectExplorer openOn: anObject