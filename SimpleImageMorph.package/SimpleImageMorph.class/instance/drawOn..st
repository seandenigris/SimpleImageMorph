drawing
drawOn: aCanvas

	| transform widthScale heightScale |
	widthScale := self innerBounds width / self image width.
	heightScale := self innerBounds height / self image height.
	transform := MorphicTransform new withScale: widthScale@heightScale.
	aCanvas warpImage: self image transform: transform at: self innerBounds origin