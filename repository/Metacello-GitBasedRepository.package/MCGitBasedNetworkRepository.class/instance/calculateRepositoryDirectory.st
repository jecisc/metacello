private
calculateRepositoryDirectory
	 | directory |
	
	directory := [ self class
		projectDirectoryFrom: self projectPath
		version: self projectVersion ] on: MetacelloScriptGitBasedDownloadNotification do: [ :ex | ex resume ].
	self repoPath isEmpty ifFalse: [
		directory := MetacelloPlatform current
			directoryFromPath: self repoPath
 			relativeTo: directory ].
		
	^ directory