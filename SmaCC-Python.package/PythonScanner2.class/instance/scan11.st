generated
scan11
	self recordMatch: #(51).
	self step.
	currentCharacter = $=
		ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	^ self reportLastMatch