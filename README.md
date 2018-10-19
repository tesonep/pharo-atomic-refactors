# pharo-atomic-refactors

This project provides an implementation of atomic automatic refactorings for Pharo 6.
The atomic automatic refactorings guarantee the preservation of the state in a stateful application.

It requires to have Refactoring2 installed in the image, so to install it, first the Refactoring2 framework should be installed.

```
Metacello new
	configuration: 'Refactoring2';
	repository: 'http://smalltalkhub.com/mc/GustavoSantos/Refactoring2/main';
	version: '0.0.1';
	load
```

Then later the atomic refactorings could be installed.

```
Metacello new
  baseline: 'AtomicRefactors';
  repository: 'github://tesonep/pharo-atomic-refactors';
  load.
```
