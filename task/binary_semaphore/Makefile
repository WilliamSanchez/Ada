## This Makefile is intended to be used with the following directory
## configuration:
##  - The sources are split into a series of csc (computer software components)
##    Each of these csc is put in its own directory.
##    Their name are referenced by the directory names.
##    They will be compiled into shared library (although this would also work
##    with static libraries
##  - The main program (and possibly other packages that do not belong to any
##    csc is put in the top level directory (where the Makefile is).
##       toplevel_dir __ first_csc  (sources) __ lib (will contain the library)
##                    \_ second_csc (sources) __ lib (will contain the library)
##                    \_ ...
## Although this Makefile is build for shared library, it is easy to modify
## to build partial link objects instead (modify the lines with -shared and
## gnatlink below)
##
## With this makefile, you can change any file in the system or add any new
## file, and everything will be recompiled correctly (only the relevant shared
## objects will be recompiled, and the main program will be re-linked).

# The list of computer software component for your project
#CSC_LIST=aa bb cc
CSC_LIST=

# Name of the main program (no extension)
MAIN=main

# If we need to build objects with -fPIC, uncomment the following line
#NEED_FPIC=-fPIC

# The following variable should give the directory containing libgnat.so
# You can get this directory through 'gnatls -v'. This is usually the last
# directory in the Object_Path.
GLIB=...

# The directories for the libraries
# (This macro expands the list of CSC to the list of shared libraries, you
# could simply use the expanded form :
# LIB_DIR=aa/lib/libaa.so bb/lib/libbb.so cc/lib/libcc.so
LIB_DIR=${foreach dir,${CSC_LIST},${dir}/lib/lib${dir}.so}

${MAIN}: objects ${LIB_DIR}
	gnatbind ${MAIN} ${CSC_LIST:%=-aO%/lib} -shared
	gnatlink ${MAIN} ${CSC_LIST:%=-l%}

objects::
	# recompile the sources
	gnatmake -c -i ${MAIN}.adb ${NEED_FPIC} ${CSC_LIST:%=-I%}

# Note about the rules below: if your csc are not split into multiple
# directories, but simply by their name, you need to replace *.o and
# *.ali with the appropriate list of files
# Note: In a future version of GNAT, the following commands will be simplified
# by a new tool, gnatmlib
${LIB_DIR}:
	mkdir -p ${dir $ }
	cd ${dir $ }; gnatgcc -shared -o ${notdir $ } ../*.o -L${GLIB} -lgnat
	cd ${dir $ }; cp -f ../*.ali .

# The dependencies for the modules
aa/lib/libaa.so: aa/*.o
bb/lib/libbb.so: bb/*.o
bb/lib/libcc.so: cc/*.o

run::
	LD_LIBRARY_PATH=pwd/aa/lib:pwd/bb/lib:pwd/cc/lib ./${MAIN}

clean::
	${RM} -rf ${CSC_LIST:%=%/lib}
	${RM} ${CSC_LIST:%=%/*.ali}
	${RM} ${CSC_LIST:%=%/*.o}
	${RM} *.o *.ali ${MAIN}


