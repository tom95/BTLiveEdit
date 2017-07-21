as yet unclassified
insertInConstructor

	| newSource |
	newSource := String streamContents: [:stream |
		stream
			nextPutAll: (self methodString: #initialize of: self instance class);
			nextPut: $.;
			cr;
			tab;
			nextPutAll: 'self ';
			nextPutAll: self sourceWithoutReceiver].
	
	self updateMethod: #initialize of: self instance class with: newSource