Class {
	#name : #VBTAlignmentTest,
	#superclass : #TestCase,
	#instVars : [
		'align',
		'align1',
		'align2'
	],
	#category : #'VariableBreakpoint-Tutorial'
}

{ #category : #tests }
VBTAlignmentTest >> testFailingAlignment [

	align := VBTAlignment new.
	self deny: align hasShape.
	align addRandomShapes.
	self assert: align hasShape.
	align removeShapes.
	self deny: align hasShape
]

{ #category : #tests }
VBTAlignmentTest >> testSingleObjectFailingAlignment [
	
	align1 := VBTAlignment2 new.
	align2 := VBTAlignment2 new.
	self deny: align1 hasShape.
	self deny: align2 hasShape.
	align1 addRandomShapes.
	align2 addRandomShapes.
	self assert: align1 hasShape.
	self assert: align2 hasShape.
]
