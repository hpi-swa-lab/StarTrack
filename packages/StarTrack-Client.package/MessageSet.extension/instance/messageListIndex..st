*StarTrack-Client
messageListIndex: anInteger 
	"Set the index of the selected item to be anInteger.
	Update the message list morph, the text edit morph and the assorted buttons"

	messageListIndex := anInteger.
	contents := 
		messageListIndex ~= 0
			ifTrue: [self selectedMessage]
			ifFalse: [''].
	self changed: #messageListIndex.	 "update my selection"
	self editSelection: #editMessage.
	self contentsChanged.
	(messageListIndex ~= 0 and: [ autoSelectString notNil and: [ self contents notEmpty ] ]) ifTrue: [ self changed: #autoSelect ].
	self decorateButtons.
	
	self setClassAndSelectorIn: [:class :selector |
		STTracker trackEventObject: (STSelect new
			inToolInstance: self;
			inToolClass: self class;
			kindOfObject: #method;
			selectedObject: class name , '>>#' , selector;
			yourself)]	
