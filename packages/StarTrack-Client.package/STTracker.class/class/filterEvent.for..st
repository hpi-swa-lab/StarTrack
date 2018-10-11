tracking - event filtering
filterEvent: anEvent for: targetObject

	(anEvent isMouseDown and: [targetObject isSystemWindow]) ifTrue: [
		self instance trackEvent: #click in: targetObject model].
	
	(anEvent isMouseDown and: [targetObject isKindOf: HaloMorph]) ifTrue: [
		self instance trackEvent: #click in: targetObject].
	
	^ anEvent
