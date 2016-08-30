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
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/Netdebug.o \
	${OBJECTDIR}/lib/Serial.o \
	${OBJECTDIR}/lib/Str.o \
	${OBJECTDIR}/lib/database/DbSqlite.o \
	${OBJECTDIR}/lib/model/This.o \
	${OBJECTDIR}/modules/collector/DiskStats.o \
	${OBJECTDIR}/modules/collector/GetSystemConfiguration.o \
	${OBJECTDIR}/modules/collector/NetStats.o \
	${OBJECTDIR}/modules/collector/SquidParser.o \
	${OBJECTDIR}/modules/replicador/SendData.o \
	${OBJECTDIR}/modules/socket/ClientSocket.o \
	${OBJECTDIR}/modules/socket/ServerSocket.o \
	${OBJECTDIR}/modules/socket/Socket.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/src

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/src: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/src ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/Netdebug.o: Netdebug.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Netdebug.o Netdebug.cpp

${OBJECTDIR}/lib/Serial.o: lib/Serial.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/Serial.o lib/Serial.cpp

${OBJECTDIR}/lib/Str.o: lib/Str.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/Str.o lib/Str.cpp

${OBJECTDIR}/lib/database/DbSqlite.o: lib/database/DbSqlite.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/database
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/database/DbSqlite.o lib/database/DbSqlite.cpp

${OBJECTDIR}/lib/model/This.o: lib/model/This.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/model
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/model/This.o lib/model/This.cpp

${OBJECTDIR}/modules/collector/DiskStats.o: modules/collector/DiskStats.cpp 
	${MKDIR} -p ${OBJECTDIR}/modules/collector
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/modules/collector/DiskStats.o modules/collector/DiskStats.cpp

${OBJECTDIR}/modules/collector/GetSystemConfiguration.o: modules/collector/GetSystemConfiguration.cpp 
	${MKDIR} -p ${OBJECTDIR}/modules/collector
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/modules/collector/GetSystemConfiguration.o modules/collector/GetSystemConfiguration.cpp

${OBJECTDIR}/modules/collector/NetStats.o: modules/collector/NetStats.cpp 
	${MKDIR} -p ${OBJECTDIR}/modules/collector
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/modules/collector/NetStats.o modules/collector/NetStats.cpp

${OBJECTDIR}/modules/collector/SquidParser.o: modules/collector/SquidParser.cpp 
	${MKDIR} -p ${OBJECTDIR}/modules/collector
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/modules/collector/SquidParser.o modules/collector/SquidParser.cpp

${OBJECTDIR}/modules/replicador/SendData.o: modules/replicador/SendData.cpp 
	${MKDIR} -p ${OBJECTDIR}/modules/replicador
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/modules/replicador/SendData.o modules/replicador/SendData.cpp

${OBJECTDIR}/modules/socket/ClientSocket.o: modules/socket/ClientSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/modules/socket
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/modules/socket/ClientSocket.o modules/socket/ClientSocket.cpp

${OBJECTDIR}/modules/socket/ServerSocket.o: modules/socket/ServerSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/modules/socket
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/modules/socket/ServerSocket.o modules/socket/ServerSocket.cpp

${OBJECTDIR}/modules/socket/Socket.o: modules/socket/Socket.cpp 
	${MKDIR} -p ${OBJECTDIR}/modules/socket
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/modules/socket/Socket.o modules/socket/Socket.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/src

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
