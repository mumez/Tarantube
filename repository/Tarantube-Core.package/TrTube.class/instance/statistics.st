actions
statistics
	^ (self evalWithReturn: (self queueModuleName), '.statistics(...)' arguments: {self name}) value first