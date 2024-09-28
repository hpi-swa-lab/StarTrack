as yet unclassified
hash

	^ ({self class hash} , ((self class withAllSuperclasses gather: [:c | c instVarNames]) collect: [:i | (self perform: i asSymbol) hash])) 
		fold: #bitXor:.