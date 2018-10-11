singleton
instance

	^ (Smalltalk at: #StarTrackTracker ifAbsent: [self ensureGlobalInstance])
		ifNil: [self ensureGlobalInstance]