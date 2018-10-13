*StarTrack-Client
openInHand
	"Attach the receiver to the current hand in the current morphic world"
	STTracker trackOpeningOfMorph: self.
	self currentHand attachMorph: self