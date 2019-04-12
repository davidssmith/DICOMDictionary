#!/bin/bash 

# group,elem,vr,keyword,vm,name

BEGIN {
	print "_dcmdict_data_ = Any["
	FS="\t"
}

!/^#/ {
	group = strtonum(("0x" $1))
	elem = strtonum(("0x" $2))
    printf "Any[ Any[ %d, %d ], %s, \"%s\", \"%s\", \"%s\" ],\n", group, elem, $6, $3, $5, $4
}


END {
	print "]"
}
