"
## Usage

```st
(PharoStringCaseFormater on: 'AString') asKebabCase
```
"
Class {
	#name : #PharoStringCaseFormater,
	#superclass : #Object,
	#instVars : [
		'string'
	],
	#category : #PharoStringCaseFormating
}

{ #category : #'instance creation' }
PharoStringCaseFormater class >> on: aString [

	^ self new
		  string: aString;
		  yourself
]

{ #category : #converting }
PharoStringCaseFormater >> asCamelCase [
	^ self string asCamelCase
]

{ #category : #converting }
PharoStringCaseFormater >> asConsecutiveExpendedString [

	"convert the consecutive camel case to long string.
	ACamelCase >> a ACamel Case"

	^ String streamContents: [ :stream | 
		  | previousUpper |
		  previousUpper := false.
		  self string do: [ :char | 
			  (char isUppercase and: [ previousUpper not ]) ifTrue: [ 
				  stream nextPut: $  ].
			  previousUpper := char isUppercase.
			  stream nextPut: char ] ]
]

{ #category : #converting }
PharoStringCaseFormater >> asExpendedString [

	"convert the camelCase to long string.
	ACamelCase >> a A Camel Case"

	^ String streamContents: [ :stream | 
		  self string do: [ :char | 
			  char isUppercase ifTrue: [ stream nextPut: $  ].
			  stream nextPut: char ] ]
]

{ #category : #converting }
PharoStringCaseFormater >> asKebabCase [

	^ String streamContents: [ :stream | 
		  self string uncapitalized do: [ :char | 
			  char isUppercase
				  ifTrue: [ stream << '-' << char asLowercase ]
				  ifFalse: [ stream << char ] ] ]
]

{ #category : #converting }
PharoStringCaseFormater >> asRealCamelCase [

	^ String streamContents: [ :stream | 
		  (self asConsecutiveExpendedString substrings:
			   (CharacterSet newFrom: #( $_ $- $  ))) do: [ :sub | 
			  stream nextPutAll: sub asLowercase capitalized ] ]
]

{ #category : #converting }
PharoStringCaseFormater >> asTitleCase [

	"
	[wiki link](https://en.wikipedia.org/wiki/Naming_convention_(programming))
	Two_Words
	"

	^ String streamContents: [ :stream | 
		  stream << self string first asUppercase.
		  (self string allButFirst substrings:
			   (CharacterSet newFrom: #( $_ $- $  ))) do: [ :subString | 
			  subString do: [ :char | 
				  char isUppercase ifTrue: [ stream nextPut: $_ ].
				  stream nextPut: char ] ] ]
]

{ #category : #accessing }
PharoStringCaseFormater >> string [

	^ string
]

{ #category : #accessing }
PharoStringCaseFormater >> string: anObject [

	string := anObject
]
