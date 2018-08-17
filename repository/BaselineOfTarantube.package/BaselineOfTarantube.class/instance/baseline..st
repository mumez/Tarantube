baseline
baseline: spec
	<baseline>
	
	spec for: #common do: [
		self tarantalk: spec.
		spec
			package: 'Tarantube-Core' with: [spec requires: #('Tarantalk') ].
			
		spec
			group: 'default' with: #('Core');
			group: 'Core' with: #('Tarantube-Core') ].