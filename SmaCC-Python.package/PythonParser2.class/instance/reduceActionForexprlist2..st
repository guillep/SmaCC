generated-reduction actions
reduceActionForexprlist2: nodes
	| result |
	result := Array new: 5.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	self
		addAll: (SmaCCParseNode collectionVariableIn: (nodes at: 1) collectionGetter: #trailers variableGetter: nil)
		to: (result at: 1).
	self
		addAll: (SmaCCParseNode collectionVariableIn: (nodes at: 1) collectionGetter: #ones variableGetter: #one)
		to: (result at: 2).
	self
		addAll: (SmaCCParseNode collectionVariableIn: (nodes at: 1) collectionGetter: #orTokens variableGetter: #orToken)
		to: (result at: 3).
	self
		addAll: (SmaCCParseNode collectionVariableIn: (nodes at: 1) collectionGetter: #twos variableGetter: #two)
		to: (result at: 4).
	self add: ((nodes at: 2) at: 1) to: (result at: 5).
	^ result