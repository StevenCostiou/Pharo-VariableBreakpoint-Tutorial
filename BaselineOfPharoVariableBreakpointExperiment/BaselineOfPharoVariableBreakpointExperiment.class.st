Class {
	#name : #BaselineOfPharoVariableBreakpointExperiment,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoVariableBreakpointExperiment
}

{ #category : #baselines }
BaselineOfPharoVariableBreakpointExperiment >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		spec
			baseline: 'Phex'
			with: [ spec repository: 'github://StevenCostiou/Phex:main' ].
		spec
			baseline: 'BreakpointNavigator'
			with: [ 
			spec repository: 'github://StevenCostiou/BreakpointNavigator' ].
		spec package: 'VariableBreakpoint-Tutorial'.
		spec package: 'VariableBreakpoint-Experiment' ]
]
