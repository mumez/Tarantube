*Tarantube-Core
ensureTubeNamed: tubeName type: typeName setting: creationSettingsBlock
	^ (self waitAuthCompleted
		createTubeNamed: tubeName
		type: typeName
		setting: [ :opts | 
			opts ifDuplicateUse: true.
			creationSettingsBlock cull: opts ]) valueThen: [ :val | self basicTubeNamed: val first ]