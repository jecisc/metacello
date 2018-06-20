repository creation
createGitlabRepository: aRepositorySpec
	| cl |
	
	cl := Smalltalk at: #'MCGitlabRepository'.
	aRepositorySpec description logCr.
	^ cl location: aRepositorySpec description