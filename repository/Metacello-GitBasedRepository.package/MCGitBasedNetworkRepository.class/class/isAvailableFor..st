testing
isAvailableFor: type
	^ self isEnabled and: [ type = self basicDescription ]