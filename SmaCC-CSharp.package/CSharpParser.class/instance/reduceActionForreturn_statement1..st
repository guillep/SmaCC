generated
reduceActionForreturn_statement1: nodes
	| result |
	result := CSReturnStatementNode new.
	result returnToken: (nodes at: 1).
	result expression: ((nodes at: 2) at: 1).
	result semicolonToken: (nodes at: 3).
	^result