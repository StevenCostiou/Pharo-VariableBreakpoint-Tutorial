Class {
	#name : #VariableBreakpointExperiment,
	#superclass : #PhexExperiment,
	#category : #'VariableBreakpoint-Experiment'
}

{ #category : #accessing }
VariableBreakpointExperiment class >> tasks [

	| tasks |
	tasks := OrderedCollection new.
	tasks add: (PhexTask new
			 name: 'Warm-up';
			 description: 'In this task, you will train to use variable breakpoints.';
			 contents: 'vb-tutorial.mic' asFileReference contents;
			 yourself).
	^ tasks
]

{ #category : #initialization }
VariableBreakpointExperiment >> initialize [ 	
	super initialize.
	name := 'Variable Breakpoints'.
	description := 'An empirical debugging experiment about the effectiveness of variable breakpoints.'.
	tasks := self class tasks
]
