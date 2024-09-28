tracking - event filtering
filterEvent: anEvent for: targetObject

	(anEvent isMouse and: [anEvent isMouseDown] and: [targetObject isSystemWindow]) ifTrue: [
		self instance trackEventObject: (STClick new
			inToolInstance: targetObject model;
			inToolClass: targetObject model class;
			yourself)].
	
	(anEvent isMouse and: [anEvent isMouseDown] and: [targetObject isKindOf: HaloMorph]) ifTrue: [
		self instance trackEventObject: (STClick new
			inToolInstance: targetObject;
			inToolClass: targetObject class;
			yourself)].
	
	(anEvent isKeyboard and: [anEvent isKeyUp] and: [targetObject isSystemWindow]) ifTrue: [
		self instance trackEventObject: (STKeyboardInteraction new
			inToolInstance: targetObject model;
			inToolClass: targetObject model class;
			key: anEvent keyCharacter asString;
			yourself)].
	
	^ anEvent
