rendering
renderTourettesDataOn: html
	self currancy: 'tourettes'.
	html unorderedList: [ 
		EBEvilDB default tourettes do: [ :e | 
			html listItem: e "make link to form" ].
			"new button here"
	].
	"html form: [ 
		html textInput placeholder: 'WHORE ASS'; callback: [ :e | EBEvilDB default addTourettes: e ].
		html submitButton ]"