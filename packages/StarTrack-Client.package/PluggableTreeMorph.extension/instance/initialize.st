*StarTrack-Client
initialize

	super initialize.
	
	"Filter"
	lastKeystrokeTime := 0.
	lastKeystrokes := ''.
	
	self addKeyboardBubbleFilter: STTracker.