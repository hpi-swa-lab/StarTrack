*StarTrack-Client
inspect: anObject
	"Open an inspector on the given object. The tool set must know which inspector type to use for which object - the object cannot possibly know what kind of inspectors the toolset provides."
	STTracker trackEventObject: (STToolOpened new
		toolName: #Inspector;
		shownObject: anObject;
		yourself).
	^ anObject inspectorClass openOn: anObject