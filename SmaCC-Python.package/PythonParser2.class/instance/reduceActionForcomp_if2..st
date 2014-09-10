generated-reduction actions
reduceActionForcomp_if2: nodes
	| result |
	result := Array new: 12.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 12 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self
		addAll: (SmaCCParseNode collectionVariableIn: (nodes at: 2) collectionGetter: #trailers variableGetter: nil)
		to: (result at: 2).
	self
		addAll:
			(SmaCCParseNode collectionVariableIn: (nodes at: 2) collectionGetter: #lambdaTokens variableGetter: #lambdaToken)
		to: (result at: 3).
	self
		addAll: (SmaCCParseNode collectionVariableIn: (nodes at: 2) collectionGetter: #argses variableGetter: #args)
		to: (result at: 4).
	self
		addAll:
			(SmaCCParseNode collectionVariableIn: (nodes at: 2) collectionGetter: #colonTokens variableGetter: #colonToken)
		to: (result at: 5).
	self
		addAll: (SmaCCParseNode collectionVariableIn: (nodes at: 2) collectionGetter: #bodies variableGetter: #body)
		to: (result at: 6).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 7).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 8).
	self addAll: ((nodes at: 3) at: 4) to: (result at: 9).
	self addAll: ((nodes at: 3) at: 5) to: (result at: 10).
	self addAll: ((nodes at: 3) at: 6) to: (result at: 11).
	self addAll: ((nodes at: 3) at: 7) to: (result at: 12).
	self addAll: ((nodes at: 3) at: 8) to: (result at: 1).
	self addAll: ((nodes at: 3) at: 9) to: (result at: 3).
	self addAll: ((nodes at: 3) at: 10) to: (result at: 4).
	self addAll: ((nodes at: 3) at: 11) to: (result at: 5).
	self addAll: ((nodes at: 3) at: 12) to: (result at: 6).
	^ result