accessing
webFormInputFor: prop for: val on: st
	val class = Dictionary
		ifTrue: [ 
			val keysAndValuesDo: [ :k :v | 
				self webFormInputFor: k for: v on: st
			]
		]
		ifFalse: [ 
			st nextPutAll: '<tr><td>'.
			st nextPutAll: prop asString.
			st nextPutAll: '</td><td><input type="text" value="'.
			st nextPutAll: val asString.
			st nextPutAll: '"></td></tr>'.
	]