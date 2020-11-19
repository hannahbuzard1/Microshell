! Name of package being compiled: Thread
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
! Externally visible functions in this package
	.export	_P_Thread_InitializeScheduler
	.export	_P_Thread_Run
	.export	_P_Thread_PrintReadyList
	.export	_P_Thread_ThreadStartMain
	.export	_P_Thread_ThreadFinish
	.export	_P_Thread_FatalError
	.export	_P_Thread_SetInterruptsTo
	.export	_P_Thread_TimerInterruptHandler
	.export	_P_Thread_AddToPriorityQueues
	.export	_P_Thread_FetchFromPriorityQueues
	.export	_P_Thread_QueuesEmpty
	.import	Switch
	.import	ThreadStartUp
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Thread_Thread
	.export	_Method_P_Thread_Thread_1
	.export	_Method_P_Thread_Thread_2
	.export	_Method_P_Thread_Thread_3
	.export	_Method_P_Thread_Thread_4
	.export	_Method_P_Thread_Thread_5
	.export	_Method_P_Thread_Thread_6
	.export	_Method_P_Thread_Thread_7
	.export	_Method_P_Thread_Thread_8
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
! Global variables in this package
	.data
	.export	_P_Thread_readyList
	.export	_P_Thread_priority1
	.export	_P_Thread_priority2
	.export	_P_Thread_priority3
	.export	_P_Thread_priority4
	.export	_P_Thread_priority5
	.export	_P_Thread_currentThread
	.export	_P_Thread_mainThread
	.export	_P_Thread_idleThread
	.export	_P_Thread_threadsToBeDestroyed
	.export	_P_Thread_currentInterruptStatus
_P_Thread_readyList:
	.skip	12
_P_Thread_priority1:
	.skip	12
_P_Thread_priority2:
	.skip	12
_P_Thread_priority3:
	.skip	12
_P_Thread_priority4:
	.skip	12
_P_Thread_priority5:
	.skip	12
_P_Thread_currentThread:
	.skip	4
_P_Thread_mainThread:
	.skip	4096
_P_Thread_idleThread:
	.skip	4096
_P_Thread_threadsToBeDestroyed:
	.skip	12
_P_Thread_currentInterruptStatus:
	.skip	4
	.align
! String constants
_StringConst_49:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_48:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_47:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_46:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_45:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_44:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_43:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_42:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_41:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_40:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_39:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_38:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_37:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_36:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_35:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_34:
	.word	12			! length
	.ascii	" Priority : "
	.align
_StringConst_33:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_32:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_31:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_30:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_29:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_28:
	.word	9			! length
	.ascii	"Sleeping "
	.align
_StringConst_27:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_26:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_25:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_24:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_23:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_22:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_21:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_20:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_19:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_17:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_16:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_14:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_13:
	.word	18			! length
	.ascii	"\" -- TERMINATING!\n"
	.align
_StringConst_12:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_11:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_10:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_9:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_8:
	.word	28			! length
	.ascii	"Here is the priority5 list:\n"
	.align
_StringConst_7:
	.word	28			! length
	.ascii	"Here is the priority4 list:\n"
	.align
_StringConst_6:
	.word	28			! length
	.ascii	"Here is the priority3 list:\n"
	.align
_StringConst_5:
	.word	28			! length
	.ascii	"Here is the priority2 list:\n"
	.align
_StringConst_4:
	.word	28			! length
	.ascii	"Here is the priority1 list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Thread.k\0"
_packageName:
	.ascii	"Thread\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Thread_:
	.export	_CheckVersion_P_Thread_
	set	0x4ad29104,r4		! myHashVal = 1255313668
	cmp	r3,r4
	be	_Label_52
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_52:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_53
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_53
_Label_53:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Thread_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_InitializeScheduler,r1
	push	r1
	mov	21,r1
_Label_782:
	push	r0
	sub	r1,1,r1
	bne	_Label_782
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_54 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_54  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_readyList = zeros  (sizeInBytes=12)
	set	_P_Thread_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Thread_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Thread_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_priority1 = zeros  (sizeInBytes=12)
	set	_P_Thread_priority1,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Thread_priority1 = _P_List_List
	set	_P_List_List,r1
	set	_P_Thread_priority1,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_priority2 = zeros  (sizeInBytes=12)
	set	_P_Thread_priority2,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Thread_priority2 = _P_List_List
	set	_P_List_List,r1
	set	_P_Thread_priority2,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_priority3 = zeros  (sizeInBytes=12)
	set	_P_Thread_priority3,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Thread_priority3 = _P_List_List
	set	_P_List_List,r1
	set	_P_Thread_priority3,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_priority4 = zeros  (sizeInBytes=12)
	set	_P_Thread_priority4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Thread_priority4 = _P_List_List
	set	_P_List_List,r1
	set	_P_Thread_priority4,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_priority5 = zeros  (sizeInBytes=12)
	set	_P_Thread_priority5,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Thread_priority5 = _P_List_List
	set	_P_List_List,r1
	set	_P_Thread_priority5,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Thread_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Thread_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Thread_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_mainThread = zeros  (sizeInBytes=4096)
	set	_P_Thread_mainThread,r4
	mov	1024,r3
_Label_783:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_783
!   _P_Thread_mainThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_63 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_64 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_63  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _temp_65 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-36]
!   _temp_66 = _temp_65 + 80
	load	[r14+-36],r1
	add	r1,80,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_66 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_idleThread = zeros  (sizeInBytes=4096)
	set	_P_Thread_idleThread,r4
	mov	1024,r3
_Label_784:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_784
!   _P_Thread_idleThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0SE",r10
!   _temp_68 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_69 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_68  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   _temp_70 = _function_51_IdleFunction
	set	_function_51_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_71 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_70  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	29,r13		! source line 29
	mov	"\0\0AS",r10
!   _P_Thread_currentThread = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	set	_P_Thread_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	31,r13		! source line 31
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_72
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_73
	.word	-12
	.word	4
	.word	_Label_74
	.word	-16
	.word	4
	.word	_Label_75
	.word	-20
	.word	4
	.word	_Label_76
	.word	-24
	.word	4
	.word	_Label_77
	.word	-28
	.word	4
	.word	_Label_78
	.word	-32
	.word	4
	.word	_Label_79
	.word	-36
	.word	4
	.word	_Label_80
	.word	-40
	.word	4
	.word	_Label_81
	.word	-44
	.word	4
	.word	_Label_82
	.word	-48
	.word	4
	.word	_Label_83
	.word	-52
	.word	4
	.word	_Label_84
	.word	-56
	.word	4
	.word	_Label_85
	.word	-60
	.word	4
	.word	_Label_86
	.word	-64
	.word	4
	.word	_Label_87
	.word	-68
	.word	4
	.word	_Label_88
	.word	-72
	.word	4
	.word	_Label_89
	.word	-76
	.word	4
	.word	_Label_90
	.word	-80
	.word	4
	.word	0
_Label_72:
	.ascii	"InitializeScheduler\0"
	.align
_Label_73:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_74:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_75:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_76:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_77:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_78:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_79:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_80:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_81:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_82:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_51_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_51_IdleFunction,r1
	push	r1
	mov	7,r1
_Label_785:
	push	r0
	sub	r1,1,r1
	bne	_Label_785
	mov	36,r13		! source line 36
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0WH",r10
_Label_91:
!	_Label_92	jmp	_Label_92
_Label_92:
	mov	46,r13		! source line 46
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0IF",r10
	mov	48,r13		! source line 48
	mov	"\0\0SE",r10
!   _temp_100 = &_P_Thread_priority1
	set	_P_Thread_priority1,r1
	store	r1,[r14+-28]
!   Send message IsEmpty
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_99 else goto _Label_95
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_95
	jmp	_Label_99
_Label_99:
	mov	48,r13		! source line 48
	mov	"\0\0SE",r10
!   _temp_101 = &_P_Thread_priority2
	set	_P_Thread_priority2,r1
	store	r1,[r14+-24]
!   Send message IsEmpty
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_98 else goto _Label_95
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_95
	jmp	_Label_98
_Label_98:
	mov	48,r13		! source line 48
	mov	"\0\0SE",r10
!   _temp_102 = &_P_Thread_priority3
	set	_P_Thread_priority3,r1
	store	r1,[r14+-20]
!   Send message IsEmpty
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_97 else goto _Label_95
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_95
	jmp	_Label_97
_Label_97:
	mov	48,r13		! source line 48
	mov	"\0\0SE",r10
!   _temp_103 = &_P_Thread_priority4
	set	_P_Thread_priority4,r1
	store	r1,[r14+-16]
!   Send message IsEmpty
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_96 else goto _Label_95
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_95
	jmp	_Label_96
_Label_96:
	mov	48,r13		! source line 48
	mov	"\0\0SE",r10
!   _temp_104 = &_P_Thread_priority5
	set	_P_Thread_priority5,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_94 else goto _Label_95
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_95
	jmp	_Label_94
_Label_94:
! THEN...
	mov	49,r13		! source line 49
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	49,r13		! source line 49
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_105
_Label_95:
! ELSE...
	mov	51,r13		! source line 51
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	51,r13		! source line 51
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_105:
! END WHILE...
	jmp	_Label_91
_Label_93:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_51_IdleFunction:
	.word	_sourceFileName
	.word	_Label_106
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_107
	.word	8
	.word	4
	.word	_Label_108
	.word	-12
	.word	4
	.word	_Label_109
	.word	-16
	.word	4
	.word	_Label_110
	.word	-20
	.word	4
	.word	_Label_111
	.word	-24
	.word	4
	.word	_Label_112
	.word	-28
	.word	4
	.word	_Label_113
	.word	-32
	.word	4
	.word	0
_Label_106:
	.ascii	"IdleFunction\0"
	.align
_Label_107:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_108:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_109:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_110:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
_Label_111:
	.byte	'?'
	.ascii	"_temp_101\0"
	.align
_Label_112:
	.byte	'?'
	.ascii	"_temp_100\0"
	.align
_Label_113:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION AddToPriorityQueues  ===============
! 
_P_Thread_AddToPriorityQueues:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_AddToPriorityQueues,r1
	push	r1
	mov	9,r1
_Label_786:
	push	r0
	sub	r1,1,r1
	bne	_Label_786
	mov	58,r13		! source line 58
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0AS",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_114 = _P_Thread_currentThread + 76
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: priority = *_temp_114  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0IF",r10
!   if priority != 1 then goto _Label_116		(int)
	load	[r14+-36],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_116
!	_Label_115	jmp	_Label_115
_Label_115:
! THEN...
	mov	67,r13		! source line 67
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0SE",r10
!   _temp_117 = &_P_Thread_priority1
	set	_P_Thread_priority1,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=currThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_116:
! IF STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0IF",r10
!   if priority != 2 then goto _Label_119		(int)
	load	[r14+-36],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_119
!	_Label_118	jmp	_Label_118
_Label_118:
! THEN...
	mov	70,r13		! source line 70
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0SE",r10
!   _temp_120 = &_P_Thread_priority2
	set	_P_Thread_priority2,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=currThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_119:
! IF STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0IF",r10
!   if priority != 3 then goto _Label_122		(int)
	load	[r14+-36],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_122
!	_Label_121	jmp	_Label_121
_Label_121:
! THEN...
	mov	73,r13		! source line 73
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0SE",r10
!   _temp_123 = &_P_Thread_priority3
	set	_P_Thread_priority3,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=currThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_122:
! IF STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0IF",r10
!   if priority != 4 then goto _Label_125		(int)
	load	[r14+-36],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_125
!	_Label_124	jmp	_Label_124
_Label_124:
! THEN...
	mov	76,r13		! source line 76
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0SE",r10
!   _temp_126 = &_P_Thread_priority4
	set	_P_Thread_priority4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=currThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_125:
! IF STATEMENT...
	mov	78,r13		! source line 78
	mov	"\0\0IF",r10
!   if priority != 5 then goto _Label_128		(int)
	load	[r14+-36],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_128
!	_Label_127	jmp	_Label_127
_Label_127:
! THEN...
	mov	79,r13		! source line 79
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	79,r13		! source line 79
	mov	"\0\0SE",r10
!   _temp_129 = &_P_Thread_priority5
	set	_P_Thread_priority5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=currThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_128:
! RETURN STATEMENT...
	mov	78,r13		! source line 78
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_AddToPriorityQueues:
	.word	_sourceFileName
	.word	_Label_130
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_131
	.word	8
	.word	4
	.word	_Label_132
	.word	-12
	.word	4
	.word	_Label_133
	.word	-16
	.word	4
	.word	_Label_134
	.word	-20
	.word	4
	.word	_Label_135
	.word	-24
	.word	4
	.word	_Label_136
	.word	-28
	.word	4
	.word	_Label_137
	.word	-32
	.word	4
	.word	_Label_138
	.word	-36
	.word	4
	.word	0
_Label_130:
	.ascii	"AddToPriorityQueues\0"
	.align
_Label_131:
	.byte	'P'
	.ascii	"currThread\0"
	.align
_Label_132:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_126\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_138:
	.byte	'I'
	.ascii	"priority\0"
	.align
! 
! ===============  FUNCTION QueuesEmpty  ===============
! 
_P_Thread_QueuesEmpty:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_QueuesEmpty,r1
	push	r1
	mov	9,r1
_Label_787:
	push	r0
	sub	r1,1,r1
	bne	_Label_787
	mov	86,r13		! source line 86
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0IF",r10
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   _temp_146 = &_P_Thread_priority1
	set	_P_Thread_priority1,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_145  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-18]
!   _temp_147 = _temp_145 XOR 1		(bool)
	loadb	[r14+-18],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-17]
!   if _temp_147 then goto _Label_140 else goto _Label_144
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_144
	jmp	_Label_140
_Label_144:
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   _temp_149 = &_P_Thread_priority2
	set	_P_Thread_priority2,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_148  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_150 = _temp_148 XOR 1		(bool)
	loadb	[r14+-16],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_150 then goto _Label_140 else goto _Label_143
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_143
	jmp	_Label_140
_Label_143:
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   _temp_152 = &_P_Thread_priority3
	set	_P_Thread_priority3,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_151  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_153 = _temp_151 XOR 1		(bool)
	loadb	[r14+-14],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_153 then goto _Label_140 else goto _Label_142
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_142
	jmp	_Label_140
_Label_142:
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   _temp_155 = &_P_Thread_priority4
	set	_P_Thread_priority4,r1
	store	r1,[r14+-28]
!   Send message IsEmpty
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_154  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_156 = _temp_154 XOR 1		(bool)
	loadb	[r14+-12],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_156 then goto _Label_140 else goto _Label_141
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_141
	jmp	_Label_140
_Label_141:
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   _temp_158 = &_P_Thread_priority5
	set	_P_Thread_priority5,r1
	store	r1,[r14+-24]
!   Send message IsEmpty
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_157  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_159 = _temp_157 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_159 then goto _Label_140 else goto _Label_139
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_139
	jmp	_Label_140
_Label_139:
! THEN...
	mov	92,r13		! source line 92
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_160
_Label_140:
! ELSE...
	mov	94,r13		! source line 94
	mov	"\0\0EL",r10
! RETURN STATEMENT...
	mov	94,r13		! source line 94
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_160:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_QueuesEmpty:
	.word	_sourceFileName
	.word	_Label_161
	.word	0		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_162
	.word	-9
	.word	1
	.word	_Label_163
	.word	-24
	.word	4
	.word	_Label_164
	.word	-10
	.word	1
	.word	_Label_165
	.word	-11
	.word	1
	.word	_Label_166
	.word	-28
	.word	4
	.word	_Label_167
	.word	-12
	.word	1
	.word	_Label_168
	.word	-13
	.word	1
	.word	_Label_169
	.word	-32
	.word	4
	.word	_Label_170
	.word	-14
	.word	1
	.word	_Label_171
	.word	-15
	.word	1
	.word	_Label_172
	.word	-36
	.word	4
	.word	_Label_173
	.word	-16
	.word	1
	.word	_Label_174
	.word	-17
	.word	1
	.word	_Label_175
	.word	-40
	.word	4
	.word	_Label_176
	.word	-18
	.word	1
	.word	0
_Label_161:
	.ascii	"QueuesEmpty\0"
	.align
_Label_162:
	.byte	'C'
	.ascii	"_temp_159\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_158\0"
	.align
_Label_164:
	.byte	'C'
	.ascii	"_temp_157\0"
	.align
_Label_165:
	.byte	'C'
	.ascii	"_temp_156\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_155\0"
	.align
_Label_167:
	.byte	'C'
	.ascii	"_temp_154\0"
	.align
_Label_168:
	.byte	'C'
	.ascii	"_temp_153\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_170:
	.byte	'C'
	.ascii	"_temp_151\0"
	.align
_Label_171:
	.byte	'C'
	.ascii	"_temp_150\0"
	.align
_Label_172:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_173:
	.byte	'C'
	.ascii	"_temp_148\0"
	.align
_Label_174:
	.byte	'C'
	.ascii	"_temp_147\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_176:
	.byte	'C'
	.ascii	"_temp_145\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Thread_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_Run,r1
	push	r1
	mov	9,r1
_Label_788:
	push	r0
	sub	r1,1,r1
	bne	_Label_788
	mov	101,r13		! source line 101
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0AS",r10
!   prevThread = _P_Thread_currentThread		(4 bytes)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-32]
! SEND STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0AS",r10
!   _P_Thread_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Thread_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_177 = nextThread + 80
	load	[r14+8],r1
	add	r1,80,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_177 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	121,r13		! source line 121
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0WH",r10
_Label_178:
	mov	125,r13		! source line 125
	mov	"\0\0SE",r10
!   _temp_182 = &_P_Thread_threadsToBeDestroyed
	set	_P_Thread_threadsToBeDestroyed,r1
	store	r1,[r14+-24]
!   Send message IsEmpty
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_181  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_181 then goto _Label_180 else goto _Label_179
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_179
	jmp	_Label_180
_Label_179:
	mov	125,r13		! source line 125
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0AS",r10
	mov	126,r13		! source line 126
	mov	"\0\0SE",r10
!   _temp_183 = &_P_Thread_threadsToBeDestroyed
	set	_P_Thread_threadsToBeDestroyed,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_184 = th + 80
	load	[r14+-36],r1
	add	r1,80,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_184 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-16],r2
	store	r1,[r2]
! END WHILE...
	jmp	_Label_178
_Label_180:
! RETURN STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_Run:
	.word	_sourceFileName
	.word	_Label_185
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_186
	.word	8
	.word	4
	.word	_Label_187
	.word	-16
	.word	4
	.word	_Label_188
	.word	-20
	.word	4
	.word	_Label_189
	.word	-24
	.word	4
	.word	_Label_190
	.word	-9
	.word	1
	.word	_Label_191
	.word	-28
	.word	4
	.word	_Label_192
	.word	-32
	.word	4
	.word	_Label_193
	.word	-36
	.word	4
	.word	0
_Label_185:
	.ascii	"Run\0"
	.align
_Label_186:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_188:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_190:
	.byte	'C'
	.ascii	"_temp_181\0"
	.align
_Label_191:
	.byte	'?'
	.ascii	"_temp_177\0"
	.align
_Label_192:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_193:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Thread_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_PrintReadyList,r1
	push	r1
	mov	18,r1
_Label_789:
	push	r0
	sub	r1,1,r1
	bne	_Label_789
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	140,r13		! source line 140
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	140,r13		! source line 140
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! CALL STATEMENT...
!   _temp_194 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_194  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	141,r13		! source line 141
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	142,r13		! source line 142
	mov	"\0\0SE",r10
!   _temp_195 = _function_50_ThreadPrint
	set	_function_50_ThreadPrint,r1
	store	r1,[r14+-64]
!   _temp_196 = &_P_Thread_priority1
	set	_P_Thread_priority1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_195  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   _temp_197 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_197  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	143,r13		! source line 143
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0SE",r10
!   _temp_198 = _function_50_ThreadPrint
	set	_function_50_ThreadPrint,r1
	store	r1,[r14+-52]
!   _temp_199 = &_P_Thread_priority2
	set	_P_Thread_priority2,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_198  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   _temp_200 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_200  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	145,r13		! source line 145
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	146,r13		! source line 146
	mov	"\0\0SE",r10
!   _temp_201 = _function_50_ThreadPrint
	set	_function_50_ThreadPrint,r1
	store	r1,[r14+-40]
!   _temp_202 = &_P_Thread_priority3
	set	_P_Thread_priority3,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_201  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   _temp_203 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_203  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	147,r13		! source line 147
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_204 = _function_50_ThreadPrint
	set	_function_50_ThreadPrint,r1
	store	r1,[r14+-28]
!   _temp_205 = &_P_Thread_priority4
	set	_P_Thread_priority4,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_204  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   _temp_206 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_206  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	149,r13		! source line 149
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	150,r13		! source line 150
	mov	"\0\0SE",r10
!   _temp_207 = _function_50_ThreadPrint
	set	_function_50_ThreadPrint,r1
	store	r1,[r14+-16]
!   _temp_208 = &_P_Thread_priority5
	set	_P_Thread_priority5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_207  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	151,r13		! source line 151
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_209
	.word	0		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_210
	.word	-12
	.word	4
	.word	_Label_211
	.word	-16
	.word	4
	.word	_Label_212
	.word	-20
	.word	4
	.word	_Label_213
	.word	-24
	.word	4
	.word	_Label_214
	.word	-28
	.word	4
	.word	_Label_215
	.word	-32
	.word	4
	.word	_Label_216
	.word	-36
	.word	4
	.word	_Label_217
	.word	-40
	.word	4
	.word	_Label_218
	.word	-44
	.word	4
	.word	_Label_219
	.word	-48
	.word	4
	.word	_Label_220
	.word	-52
	.word	4
	.word	_Label_221
	.word	-56
	.word	4
	.word	_Label_222
	.word	-60
	.word	4
	.word	_Label_223
	.word	-64
	.word	4
	.word	_Label_224
	.word	-68
	.word	4
	.word	_Label_225
	.word	-72
	.word	4
	.word	0
_Label_209:
	.ascii	"PrintReadyList\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_225:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION FetchFromPriorityQueues  ===============
! 
_P_Thread_FetchFromPriorityQueues:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_FetchFromPriorityQueues,r1
	push	r1
	mov	13,r1
_Label_790:
	push	r0
	sub	r1,1,r1
	bne	_Label_790
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	163,r13		! source line 163
	mov	"\0\0IF",r10
	mov	163,r13		! source line 163
	mov	"\0\0SE",r10
!   _temp_229 = &_P_Thread_priority1
	set	_P_Thread_priority1,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_228  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_230 = _temp_228 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_230 then goto _Label_227 else goto _Label_226
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_226
	jmp	_Label_227
_Label_226:
! THEN...
	mov	164,r13		! source line 164
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
	mov	164,r13		! source line 164
	mov	"\0\0SE",r10
!   _temp_231 = &_P_Thread_priority1
	set	_P_Thread_priority1,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=returningThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
	jmp	_Label_232
_Label_227:
! ELSE...
	mov	165,r13		! source line 165
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	165,r13		! source line 165
	mov	"\0\0IF",r10
	mov	165,r13		! source line 165
	mov	"\0\0SE",r10
!   _temp_236 = &_P_Thread_priority2
	set	_P_Thread_priority2,r1
	store	r1,[r14+-44]
!   Send message IsEmpty
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_235  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_237 = _temp_235 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_237 then goto _Label_234 else goto _Label_233
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_233
	jmp	_Label_234
_Label_233:
! THEN...
	mov	166,r13		! source line 166
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0AS",r10
	mov	166,r13		! source line 166
	mov	"\0\0SE",r10
!   _temp_238 = &_P_Thread_priority2
	set	_P_Thread_priority2,r1
	store	r1,[r14+-40]
!   Send message Remove
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=returningThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
	jmp	_Label_239
_Label_234:
! ELSE...
	mov	167,r13		! source line 167
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0IF",r10
	mov	167,r13		! source line 167
	mov	"\0\0SE",r10
!   _temp_243 = &_P_Thread_priority3
	set	_P_Thread_priority3,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_242  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_244 = _temp_242 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_244 then goto _Label_241 else goto _Label_240
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_240
	jmp	_Label_241
_Label_240:
! THEN...
	mov	168,r13		! source line 168
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0AS",r10
	mov	168,r13		! source line 168
	mov	"\0\0SE",r10
!   _temp_245 = &_P_Thread_priority3
	set	_P_Thread_priority3,r1
	store	r1,[r14+-32]
!   Send message Remove
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=returningThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
	jmp	_Label_246
_Label_241:
! ELSE...
	mov	169,r13		! source line 169
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	169,r13		! source line 169
	mov	"\0\0IF",r10
	mov	169,r13		! source line 169
	mov	"\0\0SE",r10
!   _temp_250 = &_P_Thread_priority4
	set	_P_Thread_priority4,r1
	store	r1,[r14+-28]
!   Send message IsEmpty
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_249  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_251 = _temp_249 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_251 then goto _Label_248 else goto _Label_247
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_247
	jmp	_Label_248
_Label_247:
! THEN...
	mov	170,r13		! source line 170
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	170,r13		! source line 170
	mov	"\0\0AS",r10
	mov	170,r13		! source line 170
	mov	"\0\0SE",r10
!   _temp_252 = &_P_Thread_priority4
	set	_P_Thread_priority4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=returningThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
	jmp	_Label_253
_Label_248:
! ELSE...
	mov	172,r13		! source line 172
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	172,r13		! source line 172
	mov	"\0\0AS",r10
	mov	172,r13		! source line 172
	mov	"\0\0SE",r10
!   _temp_254 = &_P_Thread_priority5
	set	_P_Thread_priority5,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=returningThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! END IF...
_Label_253:
! END IF...
_Label_246:
! END IF...
_Label_239:
! END IF...
_Label_232:
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
!   ReturnResult: returningThread  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_FetchFromPriorityQueues:
	.word	_sourceFileName
	.word	_Label_255
	.word	0		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_256
	.word	-20
	.word	4
	.word	_Label_257
	.word	-24
	.word	4
	.word	_Label_258
	.word	-9
	.word	1
	.word	_Label_259
	.word	-28
	.word	4
	.word	_Label_260
	.word	-10
	.word	1
	.word	_Label_261
	.word	-32
	.word	4
	.word	_Label_262
	.word	-11
	.word	1
	.word	_Label_263
	.word	-36
	.word	4
	.word	_Label_264
	.word	-12
	.word	1
	.word	_Label_265
	.word	-40
	.word	4
	.word	_Label_266
	.word	-13
	.word	1
	.word	_Label_267
	.word	-44
	.word	4
	.word	_Label_268
	.word	-14
	.word	1
	.word	_Label_269
	.word	-48
	.word	4
	.word	_Label_270
	.word	-15
	.word	1
	.word	_Label_271
	.word	-52
	.word	4
	.word	_Label_272
	.word	-16
	.word	1
	.word	_Label_273
	.word	-56
	.word	4
	.word	0
_Label_255:
	.ascii	"FetchFromPriorityQueues\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_258:
	.byte	'C'
	.ascii	"_temp_251\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_260:
	.byte	'C'
	.ascii	"_temp_249\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_262:
	.byte	'C'
	.ascii	"_temp_244\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_264:
	.byte	'C'
	.ascii	"_temp_242\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_266:
	.byte	'C'
	.ascii	"_temp_237\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_268:
	.byte	'C'
	.ascii	"_temp_235\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_270:
	.byte	'C'
	.ascii	"_temp_230\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_272:
	.byte	'C'
	.ascii	"_temp_228\0"
	.align
_Label_273:
	.byte	'P'
	.ascii	"returningThread\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Thread_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_791:
	push	r0
	sub	r1,1,r1
	bne	_Label_791
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	191,r13		! source line 191
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	191,r13		! source line 191
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	192,r13		! source line 192
	mov	"\0\0AS",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_274 = _P_Thread_currentThread + 84
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_274  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_276 = _P_Thread_currentThread + 88
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Data Move: _temp_275 = *_temp_276  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_275  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	193,r13		! source line 193
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	194,r13		! source line 194
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! CALL STATEMENT...
!   _temp_277 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_277  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	195,r13		! source line 195
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! RETURN STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_278
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_279
	.word	-12
	.word	4
	.word	_Label_280
	.word	-16
	.word	4
	.word	_Label_281
	.word	-20
	.word	4
	.word	_Label_282
	.word	-24
	.word	4
	.word	_Label_283
	.word	-28
	.word	4
	.word	_Label_284
	.word	-32
	.word	4
	.word	0
_Label_278:
	.ascii	"ThreadStartMain\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_283:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_284:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Thread_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_ThreadFinish,r1
	push	r1
	mov	4,r1
_Label_792:
	push	r0
	sub	r1,1,r1
	bne	_Label_792
	mov	200,r13		! source line 200
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	211,r13		! source line 211
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	211,r13		! source line 211
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! SEND STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0SE",r10
!   _temp_285 = &_P_Thread_threadsToBeDestroyed
	set	_P_Thread_threadsToBeDestroyed,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! --------------------  DEBUG  --------------------
	mov	218,r13		! source line 218
	mov	"\0\0DE",r10
	debug
! RETURN STATEMENT...
	mov	218,r13		! source line 218
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_286
	.word	0		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_287
	.word	-12
	.word	4
	.word	_Label_288
	.word	-16
	.word	4
	.word	0
_Label_286:
	.ascii	"ThreadFinish\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_288:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError  ===============
! 
_P_Thread_FatalError:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_FatalError,r1
	push	r1
	mov	8,r1
_Label_793:
	push	r0
	sub	r1,1,r1
	bne	_Label_793
	mov	223,r13		! source line 223
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	230,r13		! source line 230
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! CALL STATEMENT...
!   _temp_289 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_289  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	231,r13		! source line 231
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0IF",r10
!   if _P_Thread_currentThread == 0 then goto _Label_291		(int)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_291
!	_Label_290	jmp	_Label_290
_Label_290:
! THEN...
	mov	233,r13		! source line 233
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_292 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_292  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	233,r13		! source line 233
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_294 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   Data Move: _temp_293 = *_temp_294  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_293  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	234,r13		! source line 234
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_291:
! CALL STATEMENT...
!   _temp_295 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_295  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	236,r13		! source line 236
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	237,r13		! source line 237
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_296 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_296  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	238,r13		! source line 238
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	239,r13		! source line 239
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_FatalError:
	.word	_sourceFileName
	.word	_Label_297
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_298
	.word	8
	.word	4
	.word	_Label_299
	.word	-12
	.word	4
	.word	_Label_300
	.word	-16
	.word	4
	.word	_Label_301
	.word	-20
	.word	4
	.word	_Label_302
	.word	-24
	.word	4
	.word	_Label_303
	.word	-28
	.word	4
	.word	_Label_304
	.word	-32
	.word	4
	.word	_Label_305
	.word	-36
	.word	4
	.word	0
_Label_297:
	.ascii	"FatalError\0"
	.align
_Label_298:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_305:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Thread_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_794:
	push	r0
	sub	r1,1,r1
	bne	_Label_794
	mov	244,r13		! source line 244
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	257,r13		! source line 257
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0AS",r10
!   oldStat = _P_Thread_currentInterruptStatus		(4 bytes)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_307		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_307
!	_Label_306	jmp	_Label_306
_Label_306:
! THEN...
	mov	260,r13		! source line 260
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	261,r13		! source line 261
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_308
_Label_307:
! ELSE...
	mov	263,r13		! source line 263
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	264,r13		! source line 264
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_308:
! RETURN STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_309
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_310
	.word	8
	.word	4
	.word	_Label_311
	.word	-12
	.word	4
	.word	0
_Label_309:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_310:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_311:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Thread_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_TimerInterruptHandler,r1
	push	r1
	mov	34,r1
_Label_795:
	push	r0
	sub	r1,1,r1
	bne	_Label_795
	mov	271,r13		! source line 271
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	281,r13		! source line 281
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	283,r13		! source line 283
	mov	"\0\0IF",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_315 = _P_Thread_currentThread + 76
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,76,r1
	store	r1,[r14+-136]
!   Data Move: _temp_314 = *_temp_315  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if _temp_314 != 1 then goto _Label_313		(int)
	load	[r14+-140],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_313
!	_Label_312	jmp	_Label_312
_Label_312:
! THEN...
	mov	284,r13		! source line 284
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	284,r13		! source line 284
	mov	"\0\0IF",r10
	mov	284,r13		! source line 284
	mov	"\0\0SE",r10
!   _temp_319 = &_P_Thread_priority1
	set	_P_Thread_priority1,r1
	store	r1,[r14+-132]
!   Send message IsEmpty
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_318  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-38]
!   _temp_320 = _temp_318 XOR 0		(bool)
	loadb	[r14+-38],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-37]
!   if _temp_320 then goto _Label_317 else goto _Label_316
	loadb	[r14+-37],r1
	cmp	r1,0
	be	_Label_316
	jmp	_Label_317
_Label_316:
! THEN...
	mov	285,r13		! source line 285
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	285,r13		! source line 285
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_317:
	jmp	_Label_321
_Label_313:
! ELSE...
	mov	287,r13		! source line 287
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	287,r13		! source line 287
	mov	"\0\0IF",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_325 = _P_Thread_currentThread + 76
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,76,r1
	store	r1,[r14+-124]
!   Data Move: _temp_324 = *_temp_325  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if _temp_324 != 2 then goto _Label_323		(int)
	load	[r14+-128],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_323
!	_Label_322	jmp	_Label_322
_Label_322:
! THEN...
	mov	288,r13		! source line 288
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	288,r13		! source line 288
	mov	"\0\0IF",r10
	mov	288,r13		! source line 288
	mov	"\0\0SE",r10
!   _temp_330 = &_P_Thread_priority1
	set	_P_Thread_priority1,r1
	store	r1,[r14+-120]
!   Send message IsEmpty
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_329  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-36]
!   _temp_331 = _temp_329 XOR 0		(bool)
	loadb	[r14+-36],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-35]
!   if _temp_331 then goto _Label_328 else goto _Label_326
	loadb	[r14+-35],r1
	cmp	r1,0
	be	_Label_326
	jmp	_Label_328
_Label_328:
	mov	288,r13		! source line 288
	mov	"\0\0SE",r10
!   _temp_333 = &_P_Thread_priority2
	set	_P_Thread_priority2,r1
	store	r1,[r14+-116]
!   Send message IsEmpty
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_332  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-34]
!   _temp_334 = _temp_332 XOR 0		(bool)
	loadb	[r14+-34],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-33]
!   if _temp_334 then goto _Label_327 else goto _Label_326
	loadb	[r14+-33],r1
	cmp	r1,0
	be	_Label_326
	jmp	_Label_327
_Label_326:
! THEN...
	mov	289,r13		! source line 289
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	289,r13		! source line 289
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_327:
	jmp	_Label_335
_Label_323:
! ELSE...
	mov	291,r13		! source line 291
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0IF",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_339 = _P_Thread_currentThread + 76
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,76,r1
	store	r1,[r14+-108]
!   Data Move: _temp_338 = *_temp_339  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_338 != 3 then goto _Label_337		(int)
	load	[r14+-112],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_337
!	_Label_336	jmp	_Label_336
_Label_336:
! THEN...
	mov	292,r13		! source line 292
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0IF",r10
	mov	292,r13		! source line 292
	mov	"\0\0SE",r10
!   _temp_345 = &_P_Thread_priority2
	set	_P_Thread_priority2,r1
	store	r1,[r14+-104]
!   Send message IsEmpty
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_344  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-32]
!   _temp_346 = _temp_344 XOR 0		(bool)
	loadb	[r14+-32],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-31]
!   if _temp_346 then goto _Label_343 else goto _Label_340
	loadb	[r14+-31],r1
	cmp	r1,0
	be	_Label_340
	jmp	_Label_343
_Label_343:
	mov	292,r13		! source line 292
	mov	"\0\0SE",r10
!   _temp_348 = &_P_Thread_priority1
	set	_P_Thread_priority1,r1
	store	r1,[r14+-100]
!   Send message IsEmpty
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_347  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-30]
!   _temp_349 = _temp_347 XOR 0		(bool)
	loadb	[r14+-30],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-29]
!   if _temp_349 then goto _Label_342 else goto _Label_340
	loadb	[r14+-29],r1
	cmp	r1,0
	be	_Label_340
	jmp	_Label_342
_Label_342:
	mov	292,r13		! source line 292
	mov	"\0\0SE",r10
!   _temp_351 = &_P_Thread_priority3
	set	_P_Thread_priority3,r1
	store	r1,[r14+-96]
!   Send message IsEmpty
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_350  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-28]
!   _temp_352 = _temp_350 XOR 0		(bool)
	loadb	[r14+-28],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-27]
!   if _temp_352 then goto _Label_341 else goto _Label_340
	loadb	[r14+-27],r1
	cmp	r1,0
	be	_Label_340
	jmp	_Label_341
_Label_340:
! THEN...
	mov	293,r13		! source line 293
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	293,r13		! source line 293
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_341:
	jmp	_Label_353
_Label_337:
! ELSE...
	mov	295,r13		! source line 295
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0IF",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_357 = _P_Thread_currentThread + 76
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,76,r1
	store	r1,[r14+-88]
!   Data Move: _temp_356 = *_temp_357  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if _temp_356 != 4 then goto _Label_355		(int)
	load	[r14+-92],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_355
!	_Label_354	jmp	_Label_354
_Label_354:
! THEN...
	mov	296,r13		! source line 296
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0IF",r10
	mov	296,r13		! source line 296
	mov	"\0\0SE",r10
!   _temp_364 = &_P_Thread_priority3
	set	_P_Thread_priority3,r1
	store	r1,[r14+-84]
!   Send message IsEmpty
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_363  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-26]
!   _temp_365 = _temp_363 XOR 0		(bool)
	loadb	[r14+-26],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-25]
!   if _temp_365 then goto _Label_362 else goto _Label_358
	loadb	[r14+-25],r1
	cmp	r1,0
	be	_Label_358
	jmp	_Label_362
_Label_362:
	mov	296,r13		! source line 296
	mov	"\0\0SE",r10
!   _temp_367 = &_P_Thread_priority2
	set	_P_Thread_priority2,r1
	store	r1,[r14+-80]
!   Send message IsEmpty
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_366  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-24]
!   _temp_368 = _temp_366 XOR 0		(bool)
	loadb	[r14+-24],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-23]
!   if _temp_368 then goto _Label_361 else goto _Label_358
	loadb	[r14+-23],r1
	cmp	r1,0
	be	_Label_358
	jmp	_Label_361
_Label_361:
	mov	296,r13		! source line 296
	mov	"\0\0SE",r10
!   _temp_370 = &_P_Thread_priority1
	set	_P_Thread_priority1,r1
	store	r1,[r14+-76]
!   Send message IsEmpty
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_369  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-22]
!   _temp_371 = _temp_369 XOR 0		(bool)
	loadb	[r14+-22],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-21]
!   if _temp_371 then goto _Label_360 else goto _Label_358
	loadb	[r14+-21],r1
	cmp	r1,0
	be	_Label_358
	jmp	_Label_360
_Label_360:
	mov	296,r13		! source line 296
	mov	"\0\0SE",r10
!   _temp_373 = &_P_Thread_priority4
	set	_P_Thread_priority4,r1
	store	r1,[r14+-72]
!   Send message IsEmpty
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_372  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-20]
!   _temp_374 = _temp_372 XOR 0		(bool)
	loadb	[r14+-20],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-19]
!   if _temp_374 then goto _Label_359 else goto _Label_358
	loadb	[r14+-19],r1
	cmp	r1,0
	be	_Label_358
	jmp	_Label_359
_Label_358:
! THEN...
	mov	297,r13		! source line 297
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_359:
	jmp	_Label_375
_Label_355:
! ELSE...
	mov	299,r13		! source line 299
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0IF",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_379 = _P_Thread_currentThread + 76
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,76,r1
	store	r1,[r14+-64]
!   Data Move: _temp_378 = *_temp_379  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_378 != 5 then goto _Label_377		(int)
	load	[r14+-68],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_377
!	_Label_376	jmp	_Label_376
_Label_376:
! THEN...
	mov	300,r13		! source line 300
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0IF",r10
	mov	300,r13		! source line 300
	mov	"\0\0SE",r10
!   _temp_387 = &_P_Thread_priority1
	set	_P_Thread_priority1,r1
	store	r1,[r14+-60]
!   Send message IsEmpty
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_386  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-18]
!   _temp_388 = _temp_386 XOR 0		(bool)
	loadb	[r14+-18],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-17]
!   if _temp_388 then goto _Label_385 else goto _Label_380
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_380
	jmp	_Label_385
_Label_385:
	mov	300,r13		! source line 300
	mov	"\0\0SE",r10
!   _temp_390 = &_P_Thread_priority2
	set	_P_Thread_priority2,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_389  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_391 = _temp_389 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_391 then goto _Label_384 else goto _Label_380
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_380
	jmp	_Label_384
_Label_384:
	mov	300,r13		! source line 300
	mov	"\0\0SE",r10
!   _temp_393 = &_P_Thread_priority3
	set	_P_Thread_priority3,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_392  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_394 = _temp_392 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_394 then goto _Label_383 else goto _Label_380
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_380
	jmp	_Label_383
_Label_383:
	mov	300,r13		! source line 300
	mov	"\0\0SE",r10
!   _temp_396 = &_P_Thread_priority4
	set	_P_Thread_priority4,r1
	store	r1,[r14+-48]
!   Send message IsEmpty
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_395  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_397 = _temp_395 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_397 then goto _Label_382 else goto _Label_380
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_380
	jmp	_Label_382
_Label_382:
	mov	300,r13		! source line 300
	mov	"\0\0SE",r10
!   _temp_399 = &_P_Thread_priority5
	set	_P_Thread_priority5,r1
	store	r1,[r14+-44]
!   Send message IsEmpty
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_398  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_400 = _temp_398 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_400 then goto _Label_381 else goto _Label_380
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_380
	jmp	_Label_381
_Label_380:
! THEN...
	mov	301,r13		! source line 301
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_381:
! END IF...
_Label_377:
! END IF...
_Label_375:
! END IF...
_Label_353:
! END IF...
_Label_335:
! END IF...
_Label_321:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0RE",r10
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_401
	.word	0		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_402
	.word	-9
	.word	1
	.word	_Label_403
	.word	-44
	.word	4
	.word	_Label_404
	.word	-10
	.word	1
	.word	_Label_405
	.word	-11
	.word	1
	.word	_Label_406
	.word	-48
	.word	4
	.word	_Label_407
	.word	-12
	.word	1
	.word	_Label_408
	.word	-13
	.word	1
	.word	_Label_409
	.word	-52
	.word	4
	.word	_Label_410
	.word	-14
	.word	1
	.word	_Label_411
	.word	-15
	.word	1
	.word	_Label_412
	.word	-56
	.word	4
	.word	_Label_413
	.word	-16
	.word	1
	.word	_Label_414
	.word	-17
	.word	1
	.word	_Label_415
	.word	-60
	.word	4
	.word	_Label_416
	.word	-18
	.word	1
	.word	_Label_417
	.word	-64
	.word	4
	.word	_Label_418
	.word	-68
	.word	4
	.word	_Label_419
	.word	-19
	.word	1
	.word	_Label_420
	.word	-72
	.word	4
	.word	_Label_421
	.word	-20
	.word	1
	.word	_Label_422
	.word	-21
	.word	1
	.word	_Label_423
	.word	-76
	.word	4
	.word	_Label_424
	.word	-22
	.word	1
	.word	_Label_425
	.word	-23
	.word	1
	.word	_Label_426
	.word	-80
	.word	4
	.word	_Label_427
	.word	-24
	.word	1
	.word	_Label_428
	.word	-25
	.word	1
	.word	_Label_429
	.word	-84
	.word	4
	.word	_Label_430
	.word	-26
	.word	1
	.word	_Label_431
	.word	-88
	.word	4
	.word	_Label_432
	.word	-92
	.word	4
	.word	_Label_433
	.word	-27
	.word	1
	.word	_Label_434
	.word	-96
	.word	4
	.word	_Label_435
	.word	-28
	.word	1
	.word	_Label_436
	.word	-29
	.word	1
	.word	_Label_437
	.word	-100
	.word	4
	.word	_Label_438
	.word	-30
	.word	1
	.word	_Label_439
	.word	-31
	.word	1
	.word	_Label_440
	.word	-104
	.word	4
	.word	_Label_441
	.word	-32
	.word	1
	.word	_Label_442
	.word	-108
	.word	4
	.word	_Label_443
	.word	-112
	.word	4
	.word	_Label_444
	.word	-33
	.word	1
	.word	_Label_445
	.word	-116
	.word	4
	.word	_Label_446
	.word	-34
	.word	1
	.word	_Label_447
	.word	-35
	.word	1
	.word	_Label_448
	.word	-120
	.word	4
	.word	_Label_449
	.word	-36
	.word	1
	.word	_Label_450
	.word	-124
	.word	4
	.word	_Label_451
	.word	-128
	.word	4
	.word	_Label_452
	.word	-37
	.word	1
	.word	_Label_453
	.word	-132
	.word	4
	.word	_Label_454
	.word	-38
	.word	1
	.word	_Label_455
	.word	-136
	.word	4
	.word	_Label_456
	.word	-140
	.word	4
	.word	0
_Label_401:
	.ascii	"TimerInterruptHandler\0"
	.align
_Label_402:
	.byte	'C'
	.ascii	"_temp_400\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_404:
	.byte	'C'
	.ascii	"_temp_398\0"
	.align
_Label_405:
	.byte	'C'
	.ascii	"_temp_397\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_407:
	.byte	'C'
	.ascii	"_temp_395\0"
	.align
_Label_408:
	.byte	'C'
	.ascii	"_temp_394\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_410:
	.byte	'C'
	.ascii	"_temp_392\0"
	.align
_Label_411:
	.byte	'C'
	.ascii	"_temp_391\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_413:
	.byte	'C'
	.ascii	"_temp_389\0"
	.align
_Label_414:
	.byte	'C'
	.ascii	"_temp_388\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_416:
	.byte	'C'
	.ascii	"_temp_386\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_419:
	.byte	'C'
	.ascii	"_temp_374\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_421:
	.byte	'C'
	.ascii	"_temp_372\0"
	.align
_Label_422:
	.byte	'C'
	.ascii	"_temp_371\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_424:
	.byte	'C'
	.ascii	"_temp_369\0"
	.align
_Label_425:
	.byte	'C'
	.ascii	"_temp_368\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_427:
	.byte	'C'
	.ascii	"_temp_366\0"
	.align
_Label_428:
	.byte	'C'
	.ascii	"_temp_365\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_430:
	.byte	'C'
	.ascii	"_temp_363\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_433:
	.byte	'C'
	.ascii	"_temp_352\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_435:
	.byte	'C'
	.ascii	"_temp_350\0"
	.align
_Label_436:
	.byte	'C'
	.ascii	"_temp_349\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_438:
	.byte	'C'
	.ascii	"_temp_347\0"
	.align
_Label_439:
	.byte	'C'
	.ascii	"_temp_346\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_441:
	.byte	'C'
	.ascii	"_temp_344\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_444:
	.byte	'C'
	.ascii	"_temp_334\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_446:
	.byte	'C'
	.ascii	"_temp_332\0"
	.align
_Label_447:
	.byte	'C'
	.ascii	"_temp_331\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_449:
	.byte	'C'
	.ascii	"_temp_329\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_452:
	.byte	'C'
	.ascii	"_temp_320\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_454:
	.byte	'C'
	.ascii	"_temp_318\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
! 
! ===============  FUNCTION ThreadPrint  ===============
! 
_function_50_ThreadPrint:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_50_ThreadPrint,r1
	push	r1
	mov	17,r1
_Label_796:
	push	r0
	sub	r1,1,r1
	bne	_Label_796
	mov	311,r13		! source line 311
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	318,r13		! source line 318
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! CALL STATEMENT...
!   _temp_457 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_457  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	319,r13		! source line 319
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_459 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-60]
!   Data Move: _temp_458 = *_temp_459  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_458  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	320,r13		! source line 320
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_460 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_460  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	321,r13		! source line 321
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	322,r13		! source line 322
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_469 = t + 80
	load	[r14+8],r1
	add	r1,80,r1
	store	r1,[r14+-48]
!   Data Move: _temp_468 = *_temp_469  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   Branch to the right case label
	load	[r14+-52],r1
	cmp	r1,1
	be	_Label_463
	cmp	r1,2
	be	_Label_464
	cmp	r1,3
	be	_Label_465
	cmp	r1,4
	be	_Label_466
	cmp	r1,5
	be	_Label_467
	jmp	_Label_461
! CASE 1...
_Label_463:
! CALL STATEMENT...
!   _temp_470 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_470  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	324,r13		! source line 324
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0BR",r10
	jmp	_Label_462
! CASE 2...
_Label_464:
! CALL STATEMENT...
!   _temp_471 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_471  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	327,r13		! source line 327
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0BR",r10
	jmp	_Label_462
! CASE 3...
_Label_465:
! CALL STATEMENT...
!   _temp_472 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_472  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	330,r13		! source line 330
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0BR",r10
	jmp	_Label_462
! CASE 4...
_Label_466:
! CALL STATEMENT...
!   _temp_473 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_473  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	333,r13		! source line 333
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0BR",r10
	jmp	_Label_462
! CASE 5...
_Label_467:
! CALL STATEMENT...
!   _temp_474 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_474  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	336,r13		! source line 336
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	337,r13		! source line 337
	mov	"\0\0BR",r10
	jmp	_Label_462
! DEFAULT CASE...
_Label_461:
! CALL STATEMENT...
!   _temp_475 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_475  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	339,r13		! source line 339
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_462:
! CALL STATEMENT...
!   _temp_476 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_476  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	341,r13		! source line 341
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_477 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_477  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	342,r13		! source line 342
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_478 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_478  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	343,r13		! source line 343
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	344,r13		! source line 344
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	346,r13		! source line 346
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	346,r13		! source line 346
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! RETURN STATEMENT...
	mov	346,r13		! source line 346
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_50_ThreadPrint:
	.word	_sourceFileName
	.word	_Label_479
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_480
	.word	8
	.word	4
	.word	_Label_481
	.word	-12
	.word	4
	.word	_Label_482
	.word	-16
	.word	4
	.word	_Label_483
	.word	-20
	.word	4
	.word	_Label_484
	.word	-24
	.word	4
	.word	_Label_485
	.word	-28
	.word	4
	.word	_Label_486
	.word	-32
	.word	4
	.word	_Label_487
	.word	-36
	.word	4
	.word	_Label_488
	.word	-40
	.word	4
	.word	_Label_489
	.word	-44
	.word	4
	.word	_Label_490
	.word	-48
	.word	4
	.word	_Label_491
	.word	-52
	.word	4
	.word	_Label_492
	.word	-56
	.word	4
	.word	_Label_493
	.word	-60
	.word	4
	.word	_Label_494
	.word	-64
	.word	4
	.word	_Label_495
	.word	-68
	.word	4
	.word	_Label_496
	.word	-72
	.word	4
	.word	0
_Label_479:
	.ascii	"ThreadPrint\0"
	.align
_Label_480:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_476\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_496:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Thread_Thread:
	.word	_Label_497
	jmp	_Method_P_Thread_Thread_1	! 4:	Init
	jmp	_Method_P_Thread_Thread_2	! 8:	Fork
	jmp	_Method_P_Thread_Thread_3	! 12:	Yield
	jmp	_Method_P_Thread_Thread_4	! 16:	Sleep
	jmp	_Method_P_Thread_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Thread_Thread_8	! 24:	Print
	jmp	_Method_P_Thread_Thread_6	! 28:	setPriority
	jmp	_Method_P_Thread_Thread_7	! 32:	getPriority
	.word	0
! 
! Class descriptor:
! 
_Label_497:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_498
	.word	_sourceFileName
	.word	44		! line number
	.word	4096		! size of instances, in bytes
	.word	_P_Thread_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_498:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Thread_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_1,r1
	push	r1
	mov	25,r1
_Label_797:
	push	r0
	sub	r1,1,r1
	bne	_Label_797
	mov	355,r13		! source line 355
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	360,r13		! source line 360
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0AS",r10
!   priority = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	364,r13		! source line 364
	mov	"\0\0AS",r10
!   _temp_499 = &systemStack
	load	[r14+8],r1
	add	r1,92,r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_499) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_499 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-108],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	365,r13		! source line 365
	mov	"\0\0AS",r10
!   _temp_500 = &systemStack
	load	[r14+8],r1
	add	r1,92,r1
	store	r1,[r14+-104]
!   Move address of _temp_500 [0 ] into _temp_501
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-104],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   Data Move: *_temp_501 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-100],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	366,r13		! source line 366
	mov	"\0\0AS",r10
!   _temp_502 = &systemStack
	load	[r14+8],r1
	add	r1,92,r1
	store	r1,[r14+-96]
!   Move address of _temp_502 [999 ] into _temp_503
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   Data Move: *_temp_503 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-92],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	367,r13		! source line 367
	mov	"\0\0AS",r10
!   _temp_504 = &systemStack
	load	[r14+8],r1
	add	r1,92,r1
	store	r1,[r14+-88]
!   Move address of _temp_504 [999 ] into _temp_505
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   stackTop = _temp_505		(4 bytes)
	load	[r14+-84],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	368,r13		! source line 368
	mov	"\0\0AS",r10
!   _temp_506 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-80]
!   NEW ARRAY Constructor...
!   _temp_508 = &_temp_507
	add	r14,-76,r1
	store	r1,[r14+-20]
!   _temp_508 = _temp_508 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	13,r1
	store	r1,[r14+-16]
_Label_510:
!   Data Move: *_temp_508 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_508 = _temp_508 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_509 = _temp_509 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_509) then goto _Label_510
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_510
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-76]
!   _temp_511 = &_temp_507
	add	r14,-76,r1
	store	r1,[r14+-12]
!   make sure array has size 13
	load	[r14+-80],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_798
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_798:
!   make sure array has size 13
	load	[r14+-12],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_506 = *_temp_511  (sizeInBytes=56)
	load	[r14+-12],r5
	load	[r14+-80],r4
	mov	14,r3
_Label_799:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_799
! RETURN STATEMENT...
	mov	368,r13		! source line 368
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_1:
	.word	_sourceFileName
	.word	_Label_512
	.word	8		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_513
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_514
	.word	12
	.word	4
	.word	_Label_515
	.word	-12
	.word	4
	.word	_Label_516
	.word	-16
	.word	4
	.word	_Label_517
	.word	-20
	.word	4
	.word	_Label_518
	.word	-76
	.word	56
	.word	_Label_519
	.word	-80
	.word	4
	.word	_Label_520
	.word	-84
	.word	4
	.word	_Label_521
	.word	-88
	.word	4
	.word	_Label_522
	.word	-92
	.word	4
	.word	_Label_523
	.word	-96
	.word	4
	.word	_Label_524
	.word	-100
	.word	4
	.word	_Label_525
	.word	-104
	.word	4
	.word	_Label_526
	.word	-108
	.word	4
	.word	0
_Label_512:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_513:
	.ascii	"Pself\0"
	.align
_Label_514:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Thread_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_2,r1
	push	r1
	mov	18,r1
_Label_800:
	push	r0
	sub	r1,1,r1
	bne	_Label_800
	mov	373,r13		! source line 373
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	385,r13		! source line 385
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	385,r13		! source line 385
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	388,r13		! source line 388
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+88]
! ASSIGNMENT STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	390,r13		! source line 390
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_527 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-60]
!   Data Move: *stackTop = _temp_527  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_528) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_529 = _temp_528 + 76
	load	[r14+-56],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: threadpri = *_temp_529  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
! IF STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0IF",r10
!   if threadpri != 1 then goto _Label_531		(int)
	load	[r14+-64],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_531
!	_Label_530	jmp	_Label_530
_Label_530:
! THEN...
	mov	394,r13		! source line 394
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-48]
!   _temp_533 = &_P_Thread_priority1
	set	_P_Thread_priority1,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_532  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_531:
! IF STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0IF",r10
!   if threadpri != 2 then goto _Label_535		(int)
	load	[r14+-64],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_535
!	_Label_534	jmp	_Label_534
_Label_534:
! THEN...
	mov	397,r13		! source line 397
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   _temp_537 = &_P_Thread_priority2
	set	_P_Thread_priority2,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_536  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_535:
! IF STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0IF",r10
!   if threadpri != 3 then goto _Label_539		(int)
	load	[r14+-64],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_539
!	_Label_538	jmp	_Label_538
_Label_538:
! THEN...
	mov	400,r13		! source line 400
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   _temp_541 = &_P_Thread_priority3
	set	_P_Thread_priority3,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_540  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_539:
! IF STATEMENT...
	mov	402,r13		! source line 402
	mov	"\0\0IF",r10
!   if threadpri != 4 then goto _Label_543		(int)
	load	[r14+-64],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_543
!	_Label_542	jmp	_Label_542
_Label_542:
! THEN...
	mov	403,r13		! source line 403
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	403,r13		! source line 403
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   _temp_545 = &_P_Thread_priority4
	set	_P_Thread_priority4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_544  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_543:
! IF STATEMENT...
	mov	405,r13		! source line 405
	mov	"\0\0IF",r10
!   if threadpri != 5 then goto _Label_547		(int)
	load	[r14+-64],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_547
!	_Label_546	jmp	_Label_546
_Label_546:
! THEN...
	mov	406,r13		! source line 406
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_549 = &_P_Thread_priority5
	set	_P_Thread_priority5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_548  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_547:
! ASSIGNMENT STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	408,r13		! source line 408
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! RETURN STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_2:
	.word	_sourceFileName
	.word	_Label_550
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_551
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_552
	.word	12
	.word	4
	.word	_Label_553
	.word	16
	.word	4
	.word	_Label_554
	.word	-12
	.word	4
	.word	_Label_555
	.word	-16
	.word	4
	.word	_Label_556
	.word	-20
	.word	4
	.word	_Label_557
	.word	-24
	.word	4
	.word	_Label_558
	.word	-28
	.word	4
	.word	_Label_559
	.word	-32
	.word	4
	.word	_Label_560
	.word	-36
	.word	4
	.word	_Label_561
	.word	-40
	.word	4
	.word	_Label_562
	.word	-44
	.word	4
	.word	_Label_563
	.word	-48
	.word	4
	.word	_Label_564
	.word	-52
	.word	4
	.word	_Label_565
	.word	-56
	.word	4
	.word	_Label_566
	.word	-60
	.word	4
	.word	_Label_567
	.word	-64
	.word	4
	.word	_Label_568
	.word	-68
	.word	4
	.word	_Label_569
	.word	-72
	.word	4
	.word	0
_Label_550:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_551:
	.ascii	"Pself\0"
	.align
_Label_552:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_553:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_567:
	.byte	'I'
	.ascii	"threadpri\0"
	.align
_Label_568:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_569:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Thread_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_3,r1
	push	r1
	mov	33,r1
_Label_801:
	push	r0
	sub	r1,1,r1
	bne	_Label_801
	mov	413,r13		! source line 413
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-120]
!   if _temp_572 == _P_Thread_currentThread then goto _Label_571		(int)
	load	[r14+-120],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_571
!	_Label_570	jmp	_Label_570
_Label_570:
! THEN...
	mov	430,r13		! source line 430
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_573 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_573  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	430,r13		! source line 430
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_571:
! ASSIGNMENT STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	432,r13		! source line 432
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0AS",r10
!   Call the function
	mov	436,r13		! source line 436
	mov	"\0\0CA",r10
	call	_P_Thread_FetchFromPriorityQueues
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_575		(int)
	load	[r14+-124],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_575
!	_Label_574	jmp	_Label_574
_Label_574:
! THEN...
	mov	441,r13		! source line 441
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_577		(int)
	load	[r14+8],r1
	load	[r1+80],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_577
!	_Label_576	jmp	_Label_576
_Label_576:
! THEN...
	mov	442,r13		! source line 442
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_578 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_578  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	442,r13		! source line 442
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_577:
! ASSIGNMENT STATEMENT...
	mov	444,r13		! source line 444
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+80]
! IF STATEMENT...
	mov	445,r13		! source line 445
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_582) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_583 = _temp_582 + 76
	load	[r14+-104],r1
	add	r1,76,r1
	store	r1,[r14+-100]
!   Data Move: _temp_581 = *_temp_583  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if _temp_581 != 1 then goto _Label_580		(int)
	load	[r14+-108],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_580
!	_Label_579	jmp	_Label_579
_Label_579:
! THEN...
	mov	446,r13		! source line 446
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	446,r13		! source line 446
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   _temp_585 = &_P_Thread_priority1
	set	_P_Thread_priority1,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_584  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_580:
! IF STATEMENT...
	mov	448,r13		! source line 448
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_589) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_590 = _temp_589 + 76
	load	[r14+-84],r1
	add	r1,76,r1
	store	r1,[r14+-80]
!   Data Move: _temp_588 = *_temp_590  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if _temp_588 != 2 then goto _Label_587		(int)
	load	[r14+-88],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_587
!	_Label_586	jmp	_Label_586
_Label_586:
! THEN...
	mov	449,r13		! source line 449
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	449,r13		! source line 449
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   _temp_592 = &_P_Thread_priority2
	set	_P_Thread_priority2,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_591  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_587:
! IF STATEMENT...
	mov	451,r13		! source line 451
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_596) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_597 = _temp_596 + 76
	load	[r14+-64],r1
	add	r1,76,r1
	store	r1,[r14+-60]
!   Data Move: _temp_595 = *_temp_597  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_595 != 3 then goto _Label_594		(int)
	load	[r14+-68],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_594
!	_Label_593	jmp	_Label_593
_Label_593:
! THEN...
	mov	452,r13		! source line 452
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-56]
!   _temp_599 = &_P_Thread_priority3
	set	_P_Thread_priority3,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_598  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_594:
! IF STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_603) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_604 = _temp_603 + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-40]
!   Data Move: _temp_602 = *_temp_604  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_602 != 4 then goto _Label_601		(int)
	load	[r14+-48],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_601
!	_Label_600	jmp	_Label_600
_Label_600:
! THEN...
	mov	455,r13		! source line 455
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   _temp_606 = &_P_Thread_priority4
	set	_P_Thread_priority4,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_605  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_601:
! IF STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_610) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_611 = _temp_610 + 76
	load	[r14+-24],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: _temp_609 = *_temp_611  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_609 != 5 then goto _Label_608		(int)
	load	[r14+-28],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_608
!	_Label_607	jmp	_Label_607
_Label_607:
! THEN...
	mov	458,r13		! source line 458
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_613 = &_P_Thread_priority5
	set	_P_Thread_priority5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_612  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_608:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	460,r13		! source line 460
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! END IF...
_Label_575:
! ASSIGNMENT STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	462,r13		! source line 462
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! RETURN STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0RE",r10
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_3:
	.word	_sourceFileName
	.word	_Label_614
	.word	4		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_615
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_616
	.word	-12
	.word	4
	.word	_Label_617
	.word	-16
	.word	4
	.word	_Label_618
	.word	-20
	.word	4
	.word	_Label_619
	.word	-24
	.word	4
	.word	_Label_620
	.word	-28
	.word	4
	.word	_Label_621
	.word	-32
	.word	4
	.word	_Label_622
	.word	-36
	.word	4
	.word	_Label_623
	.word	-40
	.word	4
	.word	_Label_624
	.word	-44
	.word	4
	.word	_Label_625
	.word	-48
	.word	4
	.word	_Label_626
	.word	-52
	.word	4
	.word	_Label_627
	.word	-56
	.word	4
	.word	_Label_628
	.word	-60
	.word	4
	.word	_Label_629
	.word	-64
	.word	4
	.word	_Label_630
	.word	-68
	.word	4
	.word	_Label_631
	.word	-72
	.word	4
	.word	_Label_632
	.word	-76
	.word	4
	.word	_Label_633
	.word	-80
	.word	4
	.word	_Label_634
	.word	-84
	.word	4
	.word	_Label_635
	.word	-88
	.word	4
	.word	_Label_636
	.word	-92
	.word	4
	.word	_Label_637
	.word	-96
	.word	4
	.word	_Label_638
	.word	-100
	.word	4
	.word	_Label_639
	.word	-104
	.word	4
	.word	_Label_640
	.word	-108
	.word	4
	.word	_Label_641
	.word	-112
	.word	4
	.word	_Label_642
	.word	-116
	.word	4
	.word	_Label_643
	.word	-120
	.word	4
	.word	_Label_644
	.word	-124
	.word	4
	.word	_Label_645
	.word	-128
	.word	4
	.word	_Label_646
	.word	-132
	.word	4
	.word	0
_Label_614:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_615:
	.ascii	"Pself\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_644:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_645:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_646:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Thread_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_4,r1
	push	r1
	mov	8,r1
_Label_802:
	push	r0
	sub	r1,1,r1
	bne	_Label_802
	mov	467,r13		! source line 467
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0IF",r10
!   if _P_Thread_currentInterruptStatus == 2 then goto _Label_648		(int)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_648
!	_Label_647	jmp	_Label_647
_Label_647:
! THEN...
	mov	480,r13		! source line 480
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_649 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_649  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	480,r13		! source line 480
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_648:
! IF STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if _temp_652 == _P_Thread_currentThread then goto _Label_651		(int)
	load	[r14+-28],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_651
!	_Label_650	jmp	_Label_650
_Label_650:
! THEN...
	mov	484,r13		! source line 484
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_653 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_653  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	484,r13		! source line 484
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_651:
! CALL STATEMENT...
!   _temp_654 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_654  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	486,r13		! source line 486
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	487,r13		! source line 487
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_655 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_655  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	488,r13		! source line 488
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	490,r13		! source line 490
	mov	"\0\0AS",r10
!   Call the function
	mov	490,r13		! source line 490
	mov	"\0\0CA",r10
	call	_P_Thread_FetchFromPriorityQueues
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_656
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_656
	jmp	_Label_657
_Label_656:
! THEN...
	mov	492,r13		! source line 492
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_658 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_658  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	492,r13		! source line 492
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_657:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	494,r13		! source line 494
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! RETURN STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_4:
	.word	_sourceFileName
	.word	_Label_659
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_660
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_661
	.word	-12
	.word	4
	.word	_Label_662
	.word	-16
	.word	4
	.word	_Label_663
	.word	-20
	.word	4
	.word	_Label_664
	.word	-24
	.word	4
	.word	_Label_665
	.word	-28
	.word	4
	.word	_Label_666
	.word	-32
	.word	4
	.word	_Label_667
	.word	-36
	.word	4
	.word	0
_Label_659:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_660:
	.ascii	"Pself\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_667:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Thread_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_5,r1
	push	r1
	mov	9,r1
_Label_803:
	push	r0
	sub	r1,1,r1
	bne	_Label_803
	mov	499,r13		! source line 499
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0IF",r10
!   _temp_671 = &systemStack
	load	[r14+8],r1
	add	r1,92,r1
	store	r1,[r14+-36]
!   Move address of _temp_671 [0 ] into _temp_672
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_670 = *_temp_672  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_670 == 606348324 then goto _Label_669		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_669
!	_Label_668	jmp	_Label_668
_Label_668:
! THEN...
	mov	506,r13		! source line 506
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_673 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_673  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	506,r13		! source line 506
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
	jmp	_Label_674
_Label_669:
! ELSE...
	mov	507,r13		! source line 507
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
!   _temp_678 = &systemStack
	load	[r14+8],r1
	add	r1,92,r1
	store	r1,[r14+-20]
!   Move address of _temp_678 [999 ] into _temp_679
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_677 = *_temp_679  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_677 == 606348324 then goto _Label_676		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_676
!	_Label_675	jmp	_Label_675
_Label_675:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_680 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_680  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	508,r13		! source line 508
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_676:
! END IF...
_Label_674:
! RETURN STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_5:
	.word	_sourceFileName
	.word	_Label_681
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_682
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_683
	.word	-12
	.word	4
	.word	_Label_684
	.word	-16
	.word	4
	.word	_Label_685
	.word	-20
	.word	4
	.word	_Label_686
	.word	-24
	.word	4
	.word	_Label_687
	.word	-28
	.word	4
	.word	_Label_688
	.word	-32
	.word	4
	.word	_Label_689
	.word	-36
	.word	4
	.word	_Label_690
	.word	-40
	.word	4
	.word	0
_Label_681:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_682:
	.ascii	"Pself\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
! 
! ===============  METHOD setPriority  ===============
! 
_Method_P_Thread_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_6,r1
	push	r1
	mov	2,r1
_Label_804:
	push	r0
	sub	r1,1,r1
	bne	_Label_804
	mov	514,r13		! source line 514
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_691) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_692 = _temp_691 + 76
	load	[r14+-16],r1
	add	r1,76,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_692 = newpri  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_6:
	.word	_sourceFileName
	.word	_Label_693
	.word	8		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_694
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_695
	.word	12
	.word	4
	.word	_Label_696
	.word	-12
	.word	4
	.word	_Label_697
	.word	-16
	.word	4
	.word	0
_Label_693:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"setPriority\0"
	.align
_Label_694:
	.ascii	"Pself\0"
	.align
_Label_695:
	.byte	'I'
	.ascii	"newpri\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
! 
! ===============  METHOD getPriority  ===============
! 
_Method_P_Thread_Thread_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_7,r1
	push	r1
	mov	3,r1
_Label_805:
	push	r0
	sub	r1,1,r1
	bne	_Label_805
	mov	523,r13		! source line 523
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	529,r13		! source line 529
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_698) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_699 = _temp_698 + 76
	load	[r14+-16],r1
	add	r1,76,r1
	store	r1,[r14+-12]
!   Data Move: currentpri = *_temp_699  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	530,r13		! source line 530
	mov	"\0\0RE",r10
!   ReturnResult: currentpri  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_7:
	.word	_sourceFileName
	.word	_Label_700
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_701
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_702
	.word	-12
	.word	4
	.word	_Label_703
	.word	-16
	.word	4
	.word	_Label_704
	.word	-20
	.word	4
	.word	0
_Label_700:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"getPriority\0"
	.align
_Label_701:
	.ascii	"Pself\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_704:
	.byte	'I'
	.ascii	"currentpri\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Thread_Thread_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_8,r1
	push	r1
	mov	35,r1
_Label_806:
	push	r0
	sub	r1,1,r1
	bne	_Label_806
	mov	535,r13		! source line 535
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	541,r13		! source line 541
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	541,r13		! source line 541
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! CALL STATEMENT...
!   _temp_705 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_705  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	542,r13		! source line 542
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	543,r13		! source line 543
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_706 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_706  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	544,r13		! source line 544
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=priority  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+76],r1
	store	r1,[r15+0]
!   Call the function
	mov	545,r13		! source line 545
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_707 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_707  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	546,r13		! source line 546
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_708  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	547,r13		! source line 547
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_709 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_709  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	548,r13		! source line 548
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_710 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_710  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	549,r13		! source line 549
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_715 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-108]
!   Calculate and save the FOR-LOOP ending value
!   _temp_716 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-104]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_715  (sizeInBytes=4)
	load	[r14+-108],r1
	store	r1,[r14+-136]
_Label_711:
!   Perform the FOR-LOOP termination test
!   if i > _temp_716 then goto _Label_714		
	load	[r14+-136],r1
	load	[r14+-104],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_714
_Label_712:
	mov	550,r13		! source line 550
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_717 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_717  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	551,r13		! source line 551
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_718 = i + 2		(int)
	load	[r14+-136],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_718  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	552,r13		! source line 552
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_719 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_719  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	553,r13		! source line 553
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_721 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-84]
!   Move address of _temp_721 [i ] into _temp_722
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-84],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-80]
!   Data Move: _temp_720 = *_temp_722  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_720  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	554,r13		! source line 554
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_723 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_723  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	555,r13		! source line 555
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_725 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Move address of _temp_725 [i ] into _temp_726
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Data Move: _temp_724 = *_temp_726  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_724  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	556,r13		! source line 556
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_727 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	557,r13		! source line 557
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_713:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_711
! END FOR
_Label_714:
! CALL STATEMENT...
!   _temp_728 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-56]
!   _temp_729 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_728  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_729  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Call the function
	mov	559,r13		! source line 559
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_730 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-48]
!   _temp_732 = &systemStack
	load	[r14+8],r1
	add	r1,92,r1
	store	r1,[r14+-40]
!   Move address of _temp_732 [0 ] into _temp_733
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_731 = _temp_733		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_730  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_731  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	560,r13		! source line 560
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	561,r13		! source line 561
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+80],r1
	cmp	r1,1
	be	_Label_736
	cmp	r1,2
	be	_Label_737
	cmp	r1,3
	be	_Label_738
	cmp	r1,4
	be	_Label_739
	cmp	r1,5
	be	_Label_740
	jmp	_Label_734
! CASE 1...
_Label_736:
! CALL STATEMENT...
!   _temp_741 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	563,r13		! source line 563
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	564,r13		! source line 564
	mov	"\0\0BR",r10
	jmp	_Label_735
! CASE 2...
_Label_737:
! CALL STATEMENT...
!   _temp_742 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	566,r13		! source line 566
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0BR",r10
	jmp	_Label_735
! CASE 3...
_Label_738:
! CALL STATEMENT...
!   _temp_743 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_743  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	569,r13		! source line 569
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0BR",r10
	jmp	_Label_735
! CASE 4...
_Label_739:
! CALL STATEMENT...
!   _temp_744 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_744  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	572,r13		! source line 572
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	573,r13		! source line 573
	mov	"\0\0BR",r10
	jmp	_Label_735
! CASE 5...
_Label_740:
! CALL STATEMENT...
!   _temp_745 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_745  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	575,r13		! source line 575
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	576,r13		! source line 576
	mov	"\0\0BR",r10
	jmp	_Label_735
! DEFAULT CASE...
_Label_734:
! CALL STATEMENT...
!   _temp_746 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_746  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	578,r13		! source line 578
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_735:
! ASSIGNMENT STATEMENT...
	mov	580,r13		! source line 580
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	580,r13		! source line 580
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! RETURN STATEMENT...
	mov	580,r13		! source line 580
	mov	"\0\0RE",r10
	add	r15,144,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_8:
	.word	_sourceFileName
	.word	_Label_747
	.word	4		! total size of parameters
	.word	140		! frame size = 140
	.word	_Label_748
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_749
	.word	-12
	.word	4
	.word	_Label_750
	.word	-16
	.word	4
	.word	_Label_751
	.word	-20
	.word	4
	.word	_Label_752
	.word	-24
	.word	4
	.word	_Label_753
	.word	-28
	.word	4
	.word	_Label_754
	.word	-32
	.word	4
	.word	_Label_755
	.word	-36
	.word	4
	.word	_Label_756
	.word	-40
	.word	4
	.word	_Label_757
	.word	-44
	.word	4
	.word	_Label_758
	.word	-48
	.word	4
	.word	_Label_759
	.word	-52
	.word	4
	.word	_Label_760
	.word	-56
	.word	4
	.word	_Label_761
	.word	-60
	.word	4
	.word	_Label_762
	.word	-64
	.word	4
	.word	_Label_763
	.word	-68
	.word	4
	.word	_Label_764
	.word	-72
	.word	4
	.word	_Label_765
	.word	-76
	.word	4
	.word	_Label_766
	.word	-80
	.word	4
	.word	_Label_767
	.word	-84
	.word	4
	.word	_Label_768
	.word	-88
	.word	4
	.word	_Label_769
	.word	-92
	.word	4
	.word	_Label_770
	.word	-96
	.word	4
	.word	_Label_771
	.word	-100
	.word	4
	.word	_Label_772
	.word	-104
	.word	4
	.word	_Label_773
	.word	-108
	.word	4
	.word	_Label_774
	.word	-112
	.word	4
	.word	_Label_775
	.word	-116
	.word	4
	.word	_Label_776
	.word	-120
	.word	4
	.word	_Label_777
	.word	-124
	.word	4
	.word	_Label_778
	.word	-128
	.word	4
	.word	_Label_779
	.word	-132
	.word	4
	.word	_Label_780
	.word	-136
	.word	4
	.word	_Label_781
	.word	-140
	.word	4
	.word	0
_Label_747:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_748:
	.ascii	"Pself\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_780:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_781:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
