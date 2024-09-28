*StarTrack-Client
initialize
	"Initialize a system window. Add label, stripes, etc., if desired"

	super initialize.

	allowReframeHandles := true.
	isCollapsed := false.
	paneMorphs := Array new.
	mustNotClose := false.
	updatablePanes := Array new.

	self layoutPolicy: ProportionalLayout new.

	self wantsPaneSplitters: true.
	self wantsGrips: true.
	self layoutInset: ProportionalSplitterMorph gripThickness.
	self cellGap: ProportionalSplitterMorph gripThickness.

	self initializeLabelArea.				
	self addGrips.
	self setDefaultParameters.

	self initializeKeyboardShortcuts.
	self initializeStarTrack.