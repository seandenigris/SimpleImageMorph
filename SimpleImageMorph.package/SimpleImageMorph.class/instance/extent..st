geometry
extent: aPoint

	| newExtent |
	newExtent := self isAspectRatioFixed
		ifTrue: [ self closestProportionalExtentTo: aPoint ]
		ifFalse: [ aPoint ].
		
	^ super extent: newExtent