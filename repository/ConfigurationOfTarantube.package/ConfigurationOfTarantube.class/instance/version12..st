versions
version12: spec
	<version: '1.2' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.2'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '2/4/2017 23:10'.
		spec project: 'Tarantalk' with: '2.3'.
		spec package: #'Tarantube-Core' with: 'Tarantube-Core-MasashiUmezawa.14'. ].
