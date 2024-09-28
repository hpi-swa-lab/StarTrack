*StarTrack-Client
explore: anObject label: label

	STTracker trackEventObject: (STToolOpened new
		toolName: #Explorer;
		shownObject: anObject;
		yourself).
	^ ObjectExplorer openOn: anObject withLabel: label