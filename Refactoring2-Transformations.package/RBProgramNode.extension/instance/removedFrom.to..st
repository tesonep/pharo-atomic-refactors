*Refactoring2-Transformations
removedFrom: aNodeBefore to: aNodeAfter

	^ self asEpiceaEvent: self asEpiceaRemovalEvent
		from: aNodeBefore
		to: aNodeAfter