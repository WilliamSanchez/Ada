USC_LIST=
MAIN=main
GLIB=...


LIB_DIR=${foreach dir,${CSC_LIST},${dir}/lib/lib${dir}.so}

{MAIN}::
	# recompile the sources
	gcc -c ${MAIN}.c
	gnatmake -c c_api.adb
	gnatbind -n  c_api.ali
	gnatlink ${MAIN}.o c_api.ali -o main

${LIB_DIR}:
	mkdir -p ${dir $ }
	cd ${dir $ }; gnatgcc -shared -o ${notdir $ } ../*.o -L${GLIB} -lgnat
	cd ${dir $ }; cp -f ../*.ali .

clean::
	${RM} -rf ${CSC_LIST:%=%/lib}
	${RM} ${CSC_LIST:%=%/*.ali}
	${RM} ${CSC_LIST:%=%/*.o}
	${RM} *.o *.ali ${MAIN}


