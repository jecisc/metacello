*metacello-monticello-mc
linearLoadPackageSpecs: packageSpecs repositories: repositories
	
	| gofer |
	gofer := MetacelloGofer new.
	repositories do: [:repo | gofer repository: repo ].
	packageSpecs do: [:pkg | pkg loadUsing: self gofer: gofer ].