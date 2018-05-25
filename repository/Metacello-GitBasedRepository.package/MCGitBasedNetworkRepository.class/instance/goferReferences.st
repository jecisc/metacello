accessing
goferReferences
	"delegate collection to local repository, but change them to be from *this* repository."
	| versionNames |
	versionNames := [[ self localRepository allVersionNames ]
		on: MCRepositoryError
		do: [ :error | ^ GoferRepositoryError signal: error messageText repository: self ]] on: MetacelloScriptGitBasedDownloadNotification  do: [ :ex | ex resume: true ].
	^ versionNames collect: [ :each | GoferResolvedReference name: each repository: self ]
