Class {
	#name : #VBTAlignment2,
	#superclass : #RSAlignment,
	#classInstVars : [
		'counter'
	],
	#category : #'VariableBreakpoint-Tutorial'
}

{ #category : #adding }
VBTAlignment2 class >> addRandomShapesTo: instance [
	self counter > 1 ifTrue: [ counter := 0 ].

	instance shapes: (counter = 1
			 ifTrue: [ Array new]
			 ifFalse: [ Array with: RSBox new with: RSBox new ]).
	counter := counter + 1
]

{ #category : #adding }
VBTAlignment2 class >> counter [
	^counter ifNil:[counter := 0]
]

{ #category : #shapes }
VBTAlignment2 >> addRandomShapes [

	self class addRandomShapesTo: self
]

{ #category : #testing }
VBTAlignment2 >> hasShape [
	^ shapes isEmpty not
]

{ #category : #initialize }
VBTAlignment2 >> initialize [

	super initialize.
	shapes := Array new
]

{ #category : #shapes }
VBTAlignment2 >> removeShapes [

	shapes removeAll
]
