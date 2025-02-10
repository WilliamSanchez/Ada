USC_LIST=
MAIN=main
GLIB=...


LIB_DIR=${foreach dir,${CSC_LIST},${dir}/lib/lib${dir}.so}

{MAIN}::
	# recompile the sources
	gcc -c my_func.c
	gnatmake -c ${MAIN}.adb
	gnatbind ${MAIN}.ali
	gnatlink ${MAIN}.ali my_func.o
	#gnatmake ${MAIN}.adb -largs my_func.o

${LIB_DIR}:
	mkdir -p ${dir $ }
	cd ${dir $ }; gnatgcc -shared -o ${notdir $ } ../*.o -L${GLIB} -lgnat
	cd ${dir $ }; cp -f ../*.ali .

clean::
	${RM} -rf ${CSC_LIST:%=%/lib}
	${RM} ${CSC_LIST:%=%/*.ali}
	${RM} ${CSC_LIST:%=%/*.o}
	${RM} *.o *.ali ${MAIN}


