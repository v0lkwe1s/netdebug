#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/lib/DbSqlite.o \
	${OBJECTDIR}/lib/DiskStats.o \
	${OBJECTDIR}/lib/NetStats.o \
	${OBJECTDIR}/lib/Serial.o \
	${OBJECTDIR}/lib/ServerSocket.o \
	${OBJECTDIR}/lib/Socket.o \
	${OBJECTDIR}/lib/Str.o \
	${OBJECTDIR}/main.o \
	${OBJECTDIR}/modules/GetSystemConfiguration.o \
	${OBJECTDIR}/modules/SquidParser.o \
	${OBJECTDIR}/modules/replicador/SendData.o \
	${OBJECTDIR}/modules/socket/ClientSocket.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=-lpthread -lsqlite3
CXXFLAGS=-lpthread -lsqlite3

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-lcurses

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/mgetdata

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/mgetdata: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/mgetdata ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/lib/DbSqlite.o: lib/DbSqlite.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/DbSqlite.o lib/DbSqlite.cpp

${OBJECTDIR}/lib/DiskStats.o: lib/DiskStats.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/DiskStats.o lib/DiskStats.cpp

${OBJECTDIR}/lib/NetStats.o: lib/NetStats.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/NetStats.o lib/NetStats.cpp

${OBJECTDIR}/lib/Serial.o: lib/Serial.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/Serial.o lib/Serial.cpp

${OBJECTDIR}/lib/ServerSocket.o: lib/ServerSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/ServerSocket.o lib/ServerSocket.cpp

${OBJECTDIR}/lib/Socket.o: lib/Socket.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/Socket.o lib/Socket.cpp

${OBJECTDIR}/lib/Str.o: lib/Str.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/Str.o lib/Str.cpp

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

${OBJECTDIR}/modules/GetSystemConfiguration.o: modules/GetSystemConfiguration.cpp 
	${MKDIR} -p ${OBJECTDIR}/modules
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/modules/GetSystemConfiguration.o modules/GetSystemConfiguration.cpp

${OBJECTDIR}/modules/SquidParser.o: modules/SquidParser.cpp 
	${MKDIR} -p ${OBJECTDIR}/modules
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/modules/SquidParser.o modules/SquidParser.cpp

${OBJECTDIR}/modules/replicador/SendData.o: modules/replicador/SendData.cpp 
	${MKDIR} -p ${OBJECTDIR}/modules/replicador
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/modules/replicador/SendData.o modules/replicador/SendData.cpp

${OBJECTDIR}/modules/socket/ClientSocket.o: modules/socket/ClientSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/modules/socket
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/modules/socket/ClientSocket.o modules/socket/ClientSocket.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/mgetdata

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
