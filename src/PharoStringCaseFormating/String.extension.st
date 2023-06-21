Extension { #name : #String }

{ #category : #'*PharoStringCaseFormating' }
String >> asKebabCase [

	^ (PharoStringCaseFormater on: self) asKebabCase
]

{ #category : #'*PharoStringCaseFormating' }
String >> asTitleCase [

	^ PharoStringCaseFormater new
		  string: self;
		  asTitleCase
]
