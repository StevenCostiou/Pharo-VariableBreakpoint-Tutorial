Class {
	#name : #BaselineOfPharoVariableBreakpointTutorial,
	#superclass : #BaselineOf,
	#category : #'BaselineOfPharo-VariableBreakpoint-Tutorial'
}

{ #category : #baselines }
BaselineOfPharoVariableBreakpointTutorial >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		spec
			baseline: 'Phex'
			with: [ spec repository: 'github://StevenCostiou/Phex' ].
		spec package: 'VariableBreakpoint-Tutorial'.
		spec package: 'VariableBreakpoint-Experiment' ]
]
