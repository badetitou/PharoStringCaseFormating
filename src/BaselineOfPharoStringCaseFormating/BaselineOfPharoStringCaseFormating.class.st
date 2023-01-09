Class {
	#name : #BaselineOfPharoStringCaseFormating,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoStringCaseFormating
}

{ #category : #baselines }
BaselineOfPharoStringCaseFormating >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		self defineDependencies: spec.
		self definePackages: spec.
		self defineGroups: spec ]
]

{ #category : #baselines }
BaselineOfPharoStringCaseFormating >> defineDependencies: spec [

]

{ #category : #baselines }
BaselineOfPharoStringCaseFormating >> defineGroups: spec [

]

{ #category : #baselines }
BaselineOfPharoStringCaseFormating >> definePackages: spec [
	spec
		package: 'PharoStringCaseFormating';
		package: 'PharoStringCaseFormating-Tests' with: [ spec requires: #('PharoStringCaseFormating') ]
]
