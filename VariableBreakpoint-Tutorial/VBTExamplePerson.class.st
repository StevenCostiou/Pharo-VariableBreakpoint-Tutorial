"
Simple class representing a person.
"
Class {
	#name : #VBTExamplePerson,
	#superclass : #Object,
	#instVars : [
		'name',
		'age'
	],
	#category : #'VariableBreakpoint-Tutorial'
}

{ #category : #accessing }
VBTExamplePerson >> age [

	^ age
]

{ #category : #accessing }
VBTExamplePerson >> age: anObject [

	age := anObject
]

{ #category : #accessing }
VBTExamplePerson >> name [

	^ name
]

{ #category : #accessing }
VBTExamplePerson >> name: anObject [

	name := anObject
]

{ #category : #printing }
VBTExamplePerson >> printPerson [
	|str|
	str := WriteStream on: String new.
	str << name.
	str << ','.
	str space.
	str << age printString.
	str space.
	str << 'years.'.
	^str contents
]
