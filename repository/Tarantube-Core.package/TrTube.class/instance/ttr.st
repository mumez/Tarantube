accessing
ttr
	| val |
	val := self options at: 'ttl' ifAbsent: [ ^0 ].
	^val