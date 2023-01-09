Extension { #name : #String }

{ #category : #'*PharoStringCaseFormating' }
String >> asTitleCase [

	^ PharoStringCaseFormater new
		  string: self;
		  asTitleCase
]
