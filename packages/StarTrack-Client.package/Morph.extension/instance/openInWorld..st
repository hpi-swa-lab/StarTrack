*StarTrack-Client
openInWorld: aWorld
	"Add this morph to the requested World."
	STTracker trackOpeningOfMorph: self.
	(aWorld visibleClearArea origin ~= (0@0) and: [self position = (0@0)]) ifTrue:
		[self position: aWorld visibleClearArea origin].
	aWorld addMorph: self.
	aWorld startSteppingSubmorphsOf: self