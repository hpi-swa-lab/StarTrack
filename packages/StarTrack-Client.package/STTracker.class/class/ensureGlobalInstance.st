private
ensureGlobalInstance

	^ (Smalltalk at: #StarTrackTracker ifAbsentPut: [self new])
		ifNil: [Smalltalk at: #StarTrackTracker put: self new]