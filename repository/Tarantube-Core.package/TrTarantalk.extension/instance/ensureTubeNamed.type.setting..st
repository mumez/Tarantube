*Tarantube-Core
ensureTubeNamed: tubeName type: typeName setting: creationSettingsBlock
	| retryCount |
	retryCount := 3.
	[ ^ (self waitAuthCompleted
		createTubeNamed: tubeName
		type: typeName
		setting: [ :opts | 
			opts ifDuplicateUse: true.
			creationSettingsBlock cull: opts ])
		valueThen: [ :val | self basicTubeNamed: val first ] ]
		on: TrWaitTimeoutError
		do: [ :ex | 
			retryCount := retryCount - 1.
			1 seconds wait.
			retryCount = 0
				ifTrue: [ ex pass ]
				ifFalse: [ ex retry ] ]