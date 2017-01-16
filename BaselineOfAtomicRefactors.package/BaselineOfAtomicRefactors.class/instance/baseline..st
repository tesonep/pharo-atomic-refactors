baselines
baseline: spec
	<baseline>
	spec for: #common do: [ spec
		baseline: 'AtomicClassInstaller' with: [ spec
			repository: 'github://tesonep/pharo-AtomicClassInstaller/mc';
			loads: 'core' ];
				
		project: 'Refactoring2' with: [
				spec
					className: #ConfigurationOfRefactoring2;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/GustavoSantos/Refactoring2/main' ];

		package: 'AtomicRefactors'
			with: [ spec requires: #(AtomicClassInstaller) ];
		package: 'AtomicRefactors-Tests'
			with: [ spec requires: #(core) ];

		group: 'core'
			with: #(AtomicRefactors);
		group: 'test'
			with: #('AtomicRefactors-Tests')
	]