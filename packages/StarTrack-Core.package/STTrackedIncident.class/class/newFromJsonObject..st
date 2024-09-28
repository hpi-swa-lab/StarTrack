as yet unclassified
newFromJsonObject: aJsonObject

	| class |
	class := (self allSubclasses , {self}) detect: [:cls | cls name = (aJsonObject at: #class)].
	^ class new
		initializeFrom: aJsonObject;
		yourself