tracking - morphic
trackOpeningOfMorph: aMorph

	^ (self ignoredCategoriesWithMorphClasses includes: aMorph class category)
		ifFalse: [self trackEventObject: (STMorphOpened new
			morphInstance: aMorph;
			morphClass: aMorph class;
			yourself)] 