as yet unclassified
= anotherEvent

	^ self class = anotherEvent class and: [
		(self class withAllSuperclasses gather: [:c | c instVarNames]) allSatisfy: [:instVar |
			(self perform: instVar asSymbol) = (anotherEvent perform: instVar asSymbol)]]
