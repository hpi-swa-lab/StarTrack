*StarTrack-Client
basicInspect: anObject
	"Open a basic inspector on the given object."
	STTracker trackEventObject: (STToolOpened new
		toolName: #Inspector;
		shownObject: anObject;
		yourself).
	^ BasicInspector openOn: anObject