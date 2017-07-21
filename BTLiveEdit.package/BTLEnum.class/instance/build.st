as yet unclassified
build

	^ (BTButton label: self currentValue asString, ' ', (BTIcon icon: #caret_down))
		attach: (BTDropdown new
			addAll: (self enumValues collect: [:value |
				(BTDropdownItem label: value asString)
					when: #clicked send: self selector to: self widget with: value]))