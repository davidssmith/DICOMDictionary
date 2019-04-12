#!/bin/bash 

# group,elem,vr,keyword,vm,name

BEGIN {
	print "_dcmdict_data_ = Any["
	FS=","
}

!/^#/ {
    printf "Any[ Any[ %d, %d ], %s, \"%s\", \"%s\", \"%s\" ],\n", $1, $2, $6, $3, $5, $4
}


END {
	print "]"
}
