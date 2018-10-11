tracking - morphic
trackOpeningOfMorph: aMorph

	^ (self ignoredCategoriesWithMorphClasses includes: aMorph class category)
		ifFalse: [self trackEvent: #openInWorld in: aMorph] 