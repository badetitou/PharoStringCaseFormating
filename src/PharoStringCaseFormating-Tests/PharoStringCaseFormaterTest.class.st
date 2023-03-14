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
PharoStringCaseFormaterTest >> testAsKebabCase [

	self
		assert: (formater
				 string: 'HelloWorld';
				 asKebabCase)
		equals: 'hello-world'
]

{ #category : #test }
PharoStringCaseFormaterTest >> testAsKebabCaseMultipleMaj [

	self
		assert: (formater
				 string: 'OMP TMP';
				 asKebabCase)
		equals: 'omp-tmp'
]

{ #category : #test }
PharoStringCaseFormaterTest >> testAsKebabCaseWithSpace [

	self
		assert: (formater
				 string: 'Hello World';
				 asKebabCase)
		equals: 'hello-world'
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

{ #category : #test }
PharoStringCaseFormaterTest >> testAsTitleCaseFromCamelCase [

	self
		assert: (formater
				 string: 'helloWorld';
				 asTitleCase)
		equals: 'Hello_World'
]

{ #category : #test }
PharoStringCaseFormaterTest >> testAsTitleCaseFromKebabCase [

	self
		assert: (formater
				 string: 'Hello-World';
				 asTitleCase)
		equals: 'Hello_World'
]

{ #category : #test }
PharoStringCaseFormaterTest >> testAsTitleCaseFromPascalCase [

	self
		assert: (formater
				 string: 'HelloWorld';
				 asTitleCase)
		equals: 'Hello_World'
]

{ #category : #test }
PharoStringCaseFormaterTest >> testAsTitleCaseFromString [

	self
		assert: (formater
				 string: 'Hello World';
				 asTitleCase)
		equals: 'Hello_World'
]

{ #category : #test }
PharoStringCaseFormaterTest >> testAsTitleCaseFromTitleCase [

	self
		assert: (formater
				 string: 'Hello_World';
				 asTitleCase)
		equals: 'Hello_World'
]
