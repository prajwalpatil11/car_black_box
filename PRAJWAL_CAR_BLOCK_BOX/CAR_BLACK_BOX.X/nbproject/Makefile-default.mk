#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=hex
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/CAR_BLACK_BOX.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=hex
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/CAR_BLACK_BOX.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=clcd.c i2c.c matrix_keypad.c adc.c ds1307.c main.c uart.c isr.c timer0.c exter.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/clcd.o ${OBJECTDIR}/i2c.o ${OBJECTDIR}/matrix_keypad.o ${OBJECTDIR}/adc.o ${OBJECTDIR}/ds1307.o ${OBJECTDIR}/main.o ${OBJECTDIR}/uart.o ${OBJECTDIR}/isr.o ${OBJECTDIR}/timer0.o ${OBJECTDIR}/exter.o
POSSIBLE_DEPFILES=${OBJECTDIR}/clcd.o.d ${OBJECTDIR}/i2c.o.d ${OBJECTDIR}/matrix_keypad.o.d ${OBJECTDIR}/adc.o.d ${OBJECTDIR}/ds1307.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/uart.o.d ${OBJECTDIR}/isr.o.d ${OBJECTDIR}/timer0.o.d ${OBJECTDIR}/exter.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/clcd.o ${OBJECTDIR}/i2c.o ${OBJECTDIR}/matrix_keypad.o ${OBJECTDIR}/adc.o ${OBJECTDIR}/ds1307.o ${OBJECTDIR}/main.o ${OBJECTDIR}/uart.o ${OBJECTDIR}/isr.o ${OBJECTDIR}/timer0.o ${OBJECTDIR}/exter.o

# Source Files
SOURCEFILES=clcd.c i2c.c matrix_keypad.c adc.c ds1307.c main.c uart.c isr.c timer0.c exter.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/CAR_BLACK_BOX.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=EEPROM8
MP_LINKER_DEBUG_OPTION= 
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/CAR_BLACK_BOX.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	@${MV}  "clcd.HEX" dist/${CND_CONF}/${IMAGE_TYPE}/CAR_BLACK_BOX.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/CAR_BLACK_BOX.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	@${MV}  "clcd.HEX" dist/${CND_CONF}/${IMAGE_TYPE}/CAR_BLACK_BOX.X.${IMAGE_TYPE}.hex 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
