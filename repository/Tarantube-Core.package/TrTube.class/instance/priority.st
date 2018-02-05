accessing
priority
	| val |
	val := self options at: 'pri' ifAbsent: [ ^0 ].
	^val