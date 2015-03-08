private
closestProportionalExtentTo: aPoint
	"Vector Projection. Adapted from http://stackoverflow.com/a/21055661/424245"

	"first convert line to normalized unit vector"
	| x1 y1 x3 y3 dx dy mag lambda x4 y4 |
	x1 := self innerBounds origin x.
	y1 := self innerBounds origin y.
	x3 := aPoint x.
	y3 := aPoint y.
	dx := self innerBounds width - x1.
	dy := (fixedAspectRatio * self innerBounds width) - y1.
	mag := ((dx*dx) + (dy*dy)) sqrt.
	dx := dx / mag.
	dy := dy / mag.

	"translate the point and get the dot product"
	lambda := (dx * (x3 - x1)) + (dy * (y3 - y1)).
	x4 := (dx * lambda) + x1.
	y4 := (dy * lambda) + y1.
	^ x4@y4