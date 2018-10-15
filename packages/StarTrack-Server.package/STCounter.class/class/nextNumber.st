counting
nextNumber

	| result |
	self counterMutex critical: [
		self counterState: self counterState + 1.
		result := self counterState].
	^ result