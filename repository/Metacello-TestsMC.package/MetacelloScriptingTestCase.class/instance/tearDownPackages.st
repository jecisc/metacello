running
tearDownPackages
    | aGofer |
    super tearDown.
    aGofer := Gofer new.
    self tearDownPackageList
        do: [ :packageName | 
            (self hasPackage: packageName)
                ifTrue: [ aGofer package: packageName ] ].
    aGofer references notEmpty
        ifTrue: [ aGofer metacelloUnload ]