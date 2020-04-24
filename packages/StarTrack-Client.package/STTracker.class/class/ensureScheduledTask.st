private
ensureScheduledTask

	((Smalltalk at: #StarTrackProcess ifAbsent: [nil]) isNil or: [StarTrackProcess isTerminated])
		ifTrue: [ | process |
			process :=[[self uploadInterval wait. self instance tryToUpload] repeat] 
				forkAt: Processor userBackgroundPriority.
			process name: 'star track synchronization'.
			Smalltalk at: #StarTrackProcess put: process].