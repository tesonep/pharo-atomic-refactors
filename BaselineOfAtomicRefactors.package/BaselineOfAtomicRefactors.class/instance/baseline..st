baselines
baseline: spec
	<baseline>
	spec for: #common do: [ spec
		baseline: 'AtomicClassInstaller' with: [ spec
			repository: 'github://tesonep/pharo-AtomicClassInstaller/mc';
			loads: 'core' ];

		package: 'AtomicRefactors'
			with: [ spec requires: #(AtomicClassInstaller) ];
		package: 'AtomicRefactors-Changes';
		package: 'AtomicRefactors-Transformations';
		package: 'AtomicRefactors-Migrators';
		package: 'AtomicRefactors-Tests'
			with: [ spec requires: #(core) ];

		group: 'core'
			with: #(AtomicRefactors 'AtomicRefactors-Changes' 'AtomicRefactors-Transformations' 'AtomicRefactors-Migrators');
		group: 'test'
			with: #('AtomicRefactors-Tests')
	]