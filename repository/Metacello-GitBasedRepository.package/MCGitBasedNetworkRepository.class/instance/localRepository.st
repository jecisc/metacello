private
localRepository
	localRepository ifNil: [ [ self resolveLocalRespository  ] on: MetacelloScriptGitBasedDownloadNotification do: [ :ex | ex resume ]. ].
	self validateLocalRepository.
	^ localRepository