*Tarantube-Core
tubesStatistics
	^ (self evalWithReturn: (self queueModuleName), '.statistics()') value first.
	