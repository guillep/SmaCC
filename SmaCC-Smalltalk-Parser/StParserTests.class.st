"
A few tests with unusual smalltalk syntax accepted by RBParser.
"
Class {
	#name : #StParserTests,
	#superclass : #TestCase,
	#category : 'SmaCC-Smalltalk-Parser'
}

{ #category : #resources }
StParserTests >> sourceBlockStartingWithDot [
	[ .2 ].
	[ .^ self ].
	[ . ]
]

{ #category : #resources }
StParserTests >> sourceLongBinarySelector [
	 1 ==> 2
]

{ #category : #resources }
StParserTests >> sourceSpaceAtEndOfMethod [
	 ^ self.
                 
]

{ #category : #tests }
StParserTests >> testBlockStartingWithDot [
	self
		shouldnt:
			(StParser
				parseMethod: (StParserTests >> #sourceBlockStartingWithDot) sourceCode)
		raise: SmaCCParserError
]

{ #category : #tests }
StParserTests >> testLongBinarySelector [
	self
		shouldnt:
			(StParser
				parseMethod: (StParserTests >> #sourceLongBinarySelector) sourceCode)
		raise: SmaCCParserError
]

{ #category : #tests }
StParserTests >> testSpaceAtEndOfMethod [
	self
		shouldnt:
			(StParser
				parseMethod: (StParserTests >> #sourceSpaceAtEndOfMethod) sourceCode)
		raise: SmaCCParserError
]
