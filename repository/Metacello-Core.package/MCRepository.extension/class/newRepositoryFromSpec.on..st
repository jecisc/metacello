*Metacello-Core
newRepositoryFromSpec: aRepositorySpec on: aPlatform
	| repositoryClass |
	(self allSubclasses collect: [ :e | e printString -> (e isAvailableFor: aRepositorySpec type) ]) logCr.
	repositoryClass := self allSubclasses
		detect: [ :each | each isAvailableFor: aRepositorySpec type ]
		ifNone: [ self error: 'Unknown repository type: ' , aRepositorySpec description ].
		
	^ repositoryClass createRepositoryFromSpec: aRepositorySpec on: aPlatform