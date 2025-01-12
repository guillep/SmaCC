Class {
	#name : #CGLRFunctionDefinitionNode,
	#superclass : #CGLRAbstractNode,
	#instVars : [
		'declarator',
		'body',
		'specifierses',
		'argumentses'
	],
	#category : 'SmaCC-C-Parser'
}

{ #category : #generated }
CGLRFunctionDefinitionNode >> acceptVisitor: anAbstractVisitor [
	^ anAbstractVisitor visitFunctionDefinition: self
]

{ #category : #generated }
CGLRFunctionDefinitionNode >> argumentses [
	^ argumentses
]

{ #category : #generated }
CGLRFunctionDefinitionNode >> argumentses: anOrderedCollection [
	self setParents: self argumentses to: nil.
	argumentses := anOrderedCollection.
	self setParents: self argumentses to: self
]

{ #category : #generated }
CGLRFunctionDefinitionNode >> body [
	^ body
]

{ #category : #generated }
CGLRFunctionDefinitionNode >> body: aCGLRCompoundStatementNode [
	self body notNil
		ifTrue: [ self body parent: nil ].
	body := aCGLRCompoundStatementNode.
	self body notNil
		ifTrue: [ self body parent: self ]
]

{ #category : #generated }
CGLRFunctionDefinitionNode >> compositeNodeVariables [
	^ #(#argumentses)
]

{ #category : #generated }
CGLRFunctionDefinitionNode >> declarator [
	^ declarator
]

{ #category : #generated }
CGLRFunctionDefinitionNode >> declarator: aCGLRDeclaratorNode [
	self declarator notNil
		ifTrue: [ self declarator parent: nil ].
	declarator := aCGLRDeclaratorNode.
	self declarator notNil
		ifTrue: [ self declarator parent: self ]
]

{ #category : #'generated-initialize-release' }
CGLRFunctionDefinitionNode >> initialize [
	super initialize.
	specifierses := OrderedCollection new: 2.
	argumentses := OrderedCollection new: 2.
]

{ #category : #generated }
CGLRFunctionDefinitionNode >> nodeVariables [
	^ #(#declarator #body)
]

{ #category : #generated }
CGLRFunctionDefinitionNode >> otherVariables [
	^ #(#specifierses)
]

{ #category : #generated }
CGLRFunctionDefinitionNode >> specifierses [
	^ specifierses
]

{ #category : #generated }
CGLRFunctionDefinitionNode >> specifierses: anOrderedCollection [
	specifierses := anOrderedCollection
]
