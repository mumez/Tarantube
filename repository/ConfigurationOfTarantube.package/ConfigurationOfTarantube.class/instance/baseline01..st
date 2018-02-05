baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/MasashiUmezawa/Tarantube/main/'.
		spec project: 'Tarantalk' with: [
				spec
					className: #ConfigurationOfTarantalk;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/MasashiUmezawa/Tarantalk/main/';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ].
		spec package: #'Tarantube-Core'.
		spec group: 'Core' with: #(#'Tarantube-Core' ). ].
