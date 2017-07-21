as yet unclassified
expandItem

	children := self wrapper item value explorerContents collect: [:item | | widget |
		widget := BTExplorerItem new for: item indent: self indent + 1.
		self parent add: widget after: self.
		widget]