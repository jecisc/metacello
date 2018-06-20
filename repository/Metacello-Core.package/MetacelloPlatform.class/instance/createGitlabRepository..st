repository creation
createGitlabRepository: aRepositorySpec
	| cl |
	
	cl := Smalltalk at: #'MCGitlabRepository'.
	^ cl location: aRepositorySpec description