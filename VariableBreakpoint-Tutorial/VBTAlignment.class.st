Class {
	#name : #VBTAlignment,
	#superclass : #RSAlignment,
	#category : #'VariableBreakpoint-Tutorial'
}

{ #category : #shapes }
VBTAlignment >> addRandomShapes [

	self shapes: (Array with: RSBox new with: RSBox new)
]

{ #category : #testing }
VBTAlignment >> hasShape [
	^ shapes isEmpty not
]

{ #category : #initialize }
VBTAlignment >> initialize [

	super initialize.
	shapes := Array new
]

{ #category : #shapes }
VBTAlignment >> removeShapes [

	shapes := nil
]
