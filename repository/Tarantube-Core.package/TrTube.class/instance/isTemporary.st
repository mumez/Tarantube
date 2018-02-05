accessing
isTemporary
	| isTemp |
	isTemp := self options at: 'temporary' ifAbsent: [ ^false ].
	^isTemp