baselines
baseline: spec
	<baseline>
	spec for: #common do: [ spec
		baseline: 'AtomicClassInstaller' with: [ spec
			repository: 'github://tesonep/pharo-AtomicClassInstaller/mc';
			loads: 'core' ];
				
		package: 'Refactoring2-Core-PabloTesone.17' with: [ spec repository: 'http://smalltalkhub.com/mc/GustavoSantos/Refactoring2/main' ];
		package: 'Refactoring2-Refactorings-PabloTesone.26' with: [ spec repository: 'http://smalltalkhub.com/mc/GustavoSantos/Refactoring2/main' ];
		package: 'Refactoring2-Transformations-PabloTesone.34' with: [ spec repository: 'http://smalltalkhub.com/mc/GustavoSantos/Refactoring2/main' ];

		package: 'AtomicRefactors'
			with: [ spec requires: #(AtomicClassInstaller 'refactorings2') ];
		package: 'AtomicRefactors-Changes';
		package: 'AtomicRefactors-Transformations';
		package: 'AtomicRefactors-Migrators';
		package: 'AtomicRefactors-Tests'
			with: [ spec requires: #(core) ];

		group: 'refactorings2' 
			with: #('Refactoring2-Core-PabloTesone.17' 'Refactoring2-Refactorings-PabloTesone.26' 'Refactoring2-Transformations-PabloTesone.34');
		group: 'core'
			with: #(AtomicRefactors 'AtomicRefactors-Changes' 'AtomicRefactors-Transformations' 'AtomicRefactors-Migrators');
		group: 'test'
			with: #('AtomicRefactors-Tests')
	]