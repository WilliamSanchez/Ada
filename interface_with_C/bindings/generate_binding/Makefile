USC_LIST=
MAIN=main
GLIB=...


LIB_DIR=${foreach dir,${CSC_LIST},${dir}/lib/lib${dir}.so}

{MAIN}::
	# recompile the sources
	#gcc -c test.c
	gcc -c -fdump-ada-spec -C ./test.h
	#gcc -c -fdump-ada-spec -fada-spec-parent=Ext_C_Code -C ./test.h
	gnatmake -c -i ${MAIN}.adb
	gnatbind ${MAIN} ${CSC_LIST:%=-aO%/lib} -shared
	gnatlink ${MAIN} ${CSC_LIST:%=-l%}
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


