*Tarantube-Core
createTubeNamed: spaceName type: typeName setting: creationSettingsBlock
	| optionsBuilder |
	optionsBuilder := TrTubeOptionsBuilder new.
	creationSettingsBlock value: optionsBuilder.
	^self evalWithReturn: (self queueModuleName, '.create_tube(...)') at: 'name' arguments: {spaceName. typeName. optionsBuilder options }