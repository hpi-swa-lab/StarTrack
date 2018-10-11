*StarTrack-Client
updateProcessList
	| oldSelectedProcess newIndex now |
	now := Time millisecondClockValue.
	now - lastUpdate < 500
		ifTrue: [^ self].
	"Don't update too fast"
	lastUpdate := now.
	oldSelectedProcess := selectedProcess.
	processList := selectedProcess := selectedSelector := nil.
	Smalltalk garbageCollectMost.
	"lose defunct processes"

	processList := Process allSubInstances
				reject: [:each | each isTerminated].
	processList := processList reject: [:p | p name includesSubstring: 'taskScheduler'].
	processList := processList
				sorted: [:a :b | a priority >= b priority].
	processList := WeakArray withAll: processList.
	newIndex := processList indexOf: oldSelectedProcess.
	self changed: #processNameList.
	self processListIndex: newIndex