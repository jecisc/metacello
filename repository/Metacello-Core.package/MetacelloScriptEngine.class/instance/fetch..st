actions api
fetch: required
    [ 
    ^ self
        root:
            (required isEmpty
                ifTrue: [ self version fetch ]
                ifFalse: [ self version fetch: required ]) ]
        on: MetacelloLookupProjectSpec
        do: [ :ex | ex resume: ((self lookupProjectSpecFor: ex projectSpec) ifNil: [ ^ ex resume: ex projectSpec ]) ]