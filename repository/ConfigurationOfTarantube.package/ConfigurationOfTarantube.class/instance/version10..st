versions
version10: spec
	<version: '1.0' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '1/29/2017 01:00'.
		spec project: 'Tarantalk' with: '2.1'.
		spec package: #'Tarantube-Core' with: 'Tarantube-Core-MasashiUmezawa.12'. ].
