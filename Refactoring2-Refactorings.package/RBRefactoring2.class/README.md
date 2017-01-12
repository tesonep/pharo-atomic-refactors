I represent an elementary refactoring transformation
Simiarly to transformations, my subinstances can be composed into more complex refactorings.

As a refactoring, I am composed of:
- a precondition checking, implemented at #preconditions method; and
- a transformation, implemented at #transformation method

My main API consists in
- #transform, which executes the refactoring in a model, and
- #execute, which executes the refactoring without prompting a ChangesBrowser