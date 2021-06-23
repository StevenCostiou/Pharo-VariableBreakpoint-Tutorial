Class {
	#name : #VariableBreakpointExperiment,
	#superclass : #PhexExperiment,
	#classInstVars : [
		'currentExperiment',
		'tasksDirectory'
	],
	#category : #'VariableBreakpoint-Experiment'
}

{ #category : #accessing }
VariableBreakpointExperiment class >> currentExperiment [
	^currentExperiment ifNil:[currentExperiment := self new]
]

{ #category : #initialization }
VariableBreakpointExperiment class >> resetExperiment [

	<script>
	currentExperiment := nil
]

{ #category : #accessing }
VariableBreakpointExperiment class >> tasks [

	| dir tasks |
	dir := self tasksDirectory location / 'mic'.
	tasks := OrderedCollection new.
	tasks add: (PhexTask new
			 name: 'Tutorial';
			 description: 'Sample task.';
			 requiresAnswer: false;
			 contents: (dir / 'vb-tutorial.mic') contents;
			 alwaysDisplayDescription: true;
			 yourself).
	tasks add: (PhexTask new
			 name: 'Warm-up 1';
			 description:
				 'In this task, you will train to use variable breakpoints.';
			 requiresAnswer: true;
			 requiredAnswer: 'What was the reason of the bug?';
			 contents: (dir / 'vb-warmup.mic') contents;
			 yourself).
	tasks add: (PhexTask new
			 name: 'Warm-up 2';
			 description:
				 'In this task, you will train to use variable breakpoints.';
			 requiresAnswer: true;
			 requiredAnswer: 'What was the reason of the bug?';
			 contents: (dir / 'vb-warmup-2.mic') contents;
			 yourself).
	^ tasks
]

{ #category : #accessing }
VariableBreakpointExperiment class >> tasksDirectory [

	^ tasksDirectory ifNil: [ 
		  tasksDirectory := IceRepository repositories detect: [ :d | 
			                    d location notNil and: [ 
				                    d origin owner = 'StevenCostiou' and: [ 
					                    d origin projectName
					                    = 'PharoVariableBreakpointExperiment' ] ] ] ]
]

{ #category : #accessing }
VariableBreakpointExperiment >> experienceId [
	^'swarm-vb-experiment'
]

{ #category : #initialization }
VariableBreakpointExperiment >> initialize [ 	
	super initialize.
	name := 'Variable Breakpoints'.
	description := 'An empirical debugging experiment about the effectiveness of variable breakpoints.'.
	tasks := self class tasks.
	startingTaskAction := [ :xp :task| self startSwarmSessionForTask: task inProject: xp].
	finishTaskAction := [ :xp :task| 
		SessionService endCurrentSession.		
		Breakpoint removeAll.
		VariableBreakpoint removeAll]
]

{ #category : #testing }
VariableBreakpointExperiment >> sequentialTasks [
	^true
]

{ #category : #private }
VariableBreakpointExperiment >> startSwarmSessionForTask: task inProject: xp [

	| windowProperty |
	windowProperty := WindowProperty new
		                  projectName: xp name;
		                  developerName:
			                  SessionService developerID printString;
		                  taskName: task name;
		                  taskAction: 'SearchingBug';
		                  taskDescription: task description.

	SessionService setSwarmWindowData: windowProperty.
	SessionService registerNewSession
]
