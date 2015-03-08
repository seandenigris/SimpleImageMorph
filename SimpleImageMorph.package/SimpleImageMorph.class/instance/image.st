accessing
image

	^ image ifNil: [
		image := Form fromFileNamed: (FileLocator home / 'Downloads' / 'IMG_6424.JPG') fullName.
		self width: image width.
		self height: image height ]