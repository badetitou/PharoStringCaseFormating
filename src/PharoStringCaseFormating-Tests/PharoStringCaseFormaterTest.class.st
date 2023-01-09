"
A PharoStringCaseFormaterTest is a test class for testing the behavior of PharoStringCaseFormater
"
Class {
	#name : #PharoStringCaseFormaterTest,
	#superclass : #TestCase,
	#instVars : [
		'formater'
	],
	#category : #'PharoStringCaseFormating-Tests'
}

{ #category : #running }
PharoStringCaseFormaterTest >> setUp [
	super setUp.
	
	formater := PharoStringCaseFormater new
]

{ #category : #test }
PharoStringCaseFormaterTest >> testAsRealCamelCaseAlreadyCamelCase [

	self
		assert: (formater
				 string: 'HelloWorld';
				 asRealCamelCase)
		equals: 'HelloWorld'
]

{ #category : #test }
PharoStringCaseFormaterTest >> testAsRealCamelCaseDashed [

	self
		assert: (formater
				 string: 'hello-world';
				 asRealCamelCase)
		equals: 'HelloWorld'
]

{ #category : #test }
PharoStringCaseFormaterTest >> testAsRealCamelCaseMAJMAJ [

	self
		assert: (formater
				 string: 'HELLO WORLD';
				 asRealCamelCase)
		equals: 'HelloWorld'
]

{ #category : #test }
PharoStringCaseFormaterTest >> testAsRealCamelCaseSpaced [

	self
		assert: (formater
				 string: 'Hello_World';
				 asRealCamelCase)
		equals: 'HelloWorld'
]
