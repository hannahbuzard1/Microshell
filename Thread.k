code Thread

  -- Harry Porter  --  January 10, 2005

-----------------------------  InitializeScheduler  ---------------------------------

  function InitializeScheduler ()
    --
    -- This routine assumes that we are in System mode.  It sets up the
    -- thread scheduler and turns the executing program into "main-thread".
    -- After exit, we can execute "Yield", "Fork", etc.  Upon return, the
    -- main-thread will be executing with interrupts enabled.
    --
      Cleari ()
      print ("Initializing Thread Scheduler...\n")
      readyList = new List [Thread]
      priority1 = new List [Thread]
      priority2 = new List [Thread]
      priority3 = new List [Thread]
      priority4 = new List [Thread]
      priority5 = new List [Thread]
      threadsToBeDestroyed = new List [Thread]
      mainThread = new Thread
      mainThread.Init ("main-thread")
      mainThread.status = RUNNING
      idleThread = new Thread
      idleThread.Init ("idle-thread")
      idleThread.Fork (IdleFunction, 0)
      currentThread = & mainThread
      currentInterruptStatus = ENABLED
      Seti ()
    endFunction

-----------------------------  IdleFunction  ---------------------------------

  function IdleFunction (arg: int)
    --
    -- This is the "idle thread", a kernel thread which ensures that the ready
    -- list is never empty.  The idle thread constantly yields to other threads
    -- in an infinite loop.  However, before yielding, it first checks to see if
    -- there are other threads.  If there are no other threads, the idle thread
    -- will execute the "wait" instruction.  The "wait" instruction will enable
    -- interrupts and halt CPU execution until the next interrupt arrives.
    --
      var junk: int
      while true
        junk = SetInterruptsTo (DISABLED)
        if readyList.IsEmpty () && priority1.IsEmpty() && priority2.isEmpty() && priority3.isEmpty() && priority4.isEmpty && priority5.isEmpty
          Wait ()
        else
          currentThread.Yield ()
        endIf
      endWhile
    endFunction

-----------------------------  AddToPriorityQueues  ---------------------------------

  function AddToPriorityQueues (currentThread: ptr to Thread)
    --
    -- Get priority of the thread that is passed in
    -- and add that thread to its appropriate priority queue
    --
    var
      priority : int
    priority = currentThread.priority
    if priority == 1
        priority1.AddToEnd(currentThread)
    endIf
    if priority == 2
        priority2.AddToEnd(currentThread)
    endIf
    if priority == 3
        priority3.AddToEnd(currentThread)
    endIf
    if priority == 4
        priority4.AddToEnd(currentThread)
    endIf
    if priority == 5
        priority5.AddToEnd(currentThread)
    endIf
    endFunction


-----------------------------  QueuesEmpty  ---------------------------------

  function QueuesEmpty ()
    --
    -- Returns true if there are no threads in any of the queues
    -- returns false if there is at least one thread in a queue
    --
    if priority1.isEmpty == true && priority2.isEmpty == true && priority3.isEmpty == true && priority4.isEmpty == true && priority5.isEmpty == true
        return true
    else
        return false
    endIf
    endFunction


-----------------------------  Run  ---------------------------------

  function Run (nextThread: ptr to Thread)
    --
    -- Begin executing the thread "nextThread", which has already
    -- been removed from the readyList.  The current thread will
    -- be suspended; we assume that its status has already been
    -- changed to READY or BLOCKED.  We assume that interrupts are
    -- DISABLED when called.
    --
    -- This routine is called only from "Thread.Yield" and "Thread.Sleep".
    --
      var prevThread, th: ptr to Thread
      prevThread = currentThread
      prevThread.CheckOverflow ()
      currentThread = nextThread
      nextThread.status = RUNNING
      --print ("SWITCHING from ")
      --print (prevThread.name)
      --print (" to ")
      --print (nextThread.name)
      --print ("\n")
      Switch (prevThread, nextThread)
      --print ("After SWITCH, back in thread ")
      --print (currentThread.name)
      --print ("\n")
      while ! threadsToBeDestroyed.IsEmpty ()
        th = threadsToBeDestroyed.Remove()
        th.status = UNUSED
      endWhile
    endFunction

-----------------------------  PrintReadyList  ---------------------------------

  function PrintReadyList ()
    --
    -- This routine prints the readyList.  It disables interrupts during the
    -- printing to guarantee that the readyList won't change while it is
    -- being printed, which could cause disaster in this routine!
    --
    var oldStatus: int
      oldStatus = SetInterruptsTo (DISABLED)
        print ("Here is the priority1 list:\n")
        priority1.ApplyToEach (ThreadPrint)
        print ("Here is the priority2 list:\n")
        priority2.ApplyToEach (ThreadPrint)
        print ("Here is the priority3 list:\n")
        priority3.ApplyToEach (ThreadPrint)
        print ("Here is the priority4 list:\n")
        priority4.ApplyToEach (ThreadPrint)
        print ("Here is the priority5 list:\n")
        priority5.ApplyToEach (ThreadPrint)
      oldStatus = SetInterruptsTo (oldStatus)
    endFunction

-----------------------------  FetchFromPriorityQueues ---------------------------------

  function FetchFromPriorityQueues ()
    --
    -- Fetches and returns highest priority thread
    --
      var
        returningThread : ptr to Thread

      if priority5.IsEmpty() == false
        returningThread = priority5.Remove()
      elseIf priority4.IsEmpty() == false
        returningThread = priority4.Remove()
      elseIf priority3.IsEmpty() == false
        returningThread = priority3.Remove()
      elseIf priority2.IsEmpty() == false
        returningThread = priority2.Remove()
      else
        returningThread = priority1.Remove()
    endIf
    return returningThread
    endFunction

-----------------------------  ThreadStartMain  ---------------------------------

  function ThreadStartMain ()
    --
    -- This function is called from the assembly language routine "ThreadStart".
    -- It is the first KPL code each thread will execute, and it will
    -- invoke the thread's "main" function, with interrupts enabled.  If the "main"
    -- function ever returns, this function will terminate this thread.  This
    -- function will never return.
    --
      var
        junk: int
        mainFun: ptr to function (int)
      -- print ("ThreadStartMain...\n")
      junk = SetInterruptsTo (ENABLED)
      mainFun = currentThread.initialFunction
      mainFun (currentThread.initialArgument)
      ThreadFinish ()
      FatalError ("ThreadFinish should never return")
    endFunction

-----------------------------  ThreadFinish  ---------------------------------

  function ThreadFinish ()
    --
    -- As the last thing to do in this thread, we want to clean up
    -- and reclaim the Thread object.  This method is called as the
    -- last thing the thread does; this is the normal way for a thread
    -- to die.  However, since the thread is still running in this,
    -- we can't actually do the clean up.  So we just make a note
    -- that it is pending.  After the next thread starts (in method "Run")
    -- we'll finish the job.
    --
      var junk: int
      junk = SetInterruptsTo (DISABLED)
      -- print ("Finishing ")
      -- print (currentThread.name)
      -- print ("\n")
      threadsToBeDestroyed.AddToEnd (currentThread)
      currentThread.Sleep ()
      -- Execution will never reach the next instruction
      debug
    endFunction

-----------------------------  FatalError  ---------------------------------

  function FatalError (errorMessage: ptr to array of char)
    --
    -- Print out the name of the current thread and the given error message.
    -- Then abort execution.
    --
      var
        junk: int
      junk = SetInterruptsTo (DISABLED)
      print ("\nFATAL ERROR")
      if currentThread    -- If case errors occur before thread initialization
        print (" in ")
        print (currentThread.name)
      endIf
      print (": \"")
      print (errorMessage)
      print ("\" -- TERMINATING!\n")
      RuntimeExit ()
    endFunction

-----------------------------  SetInterruptsTo  ---------------------------------

  function SetInterruptsTo (newStatus: int) returns int
    --
    -- This routine is passed a status (DISABLED or ENABLED).  It
    -- returns the previous interrupt status and sets the interrupt
    -- status to "newStatus".
    --
    -- Since this routine reads and modifies a shared variable
    -- (currentInterruptStatus), there is a danger of this routine
    -- being re-entered.  Therefore, it momentarily will disable
    -- interrupts, to ensure a valid update to this variable.
    --
      var
        oldStat: int
      Cleari ()
      oldStat = currentInterruptStatus
      if newStatus == ENABLED
        currentInterruptStatus = ENABLED
        Seti ()
      else
        currentInterruptStatus = DISABLED
        Cleari ()
      endIf
      return oldStat
    endFunction

-----------------------------  TimerInterruptHandler  ---------------------------------

  function TimerInterruptHandler ()
    --
    -- This routine is called when a timer interrupt occurs.  Upon entry,
    -- interrupts are DISABLED.  Upon return, execution will return to
    -- the interrupted process, which necessarily had interrupts ENABLED.
    --
    -- (If you wish to turn time-slicing off, simply disable the call
    -- to "Yield" in the code below.  Threads will then execute until they
    -- call "Yield" explicitly, or until they call "Sleep".)
    --
      currentInterruptStatus = DISABLED
      --printChar ('_')
      if currentThread.priority == 1
        if priority1.size > 1 || priority2.IsEmpty == false || priority3.IsEmpty == false || priority4.IsEmpty == false || priority5.IsEmpty == false
        endIf 
      endIf
            currentThread.Yield()
      if currentThread.priority == 2
        if priority2.size > 1 || priority3.IsEmpty == false || priority4.IsEmpty == false || priority5.IsEmpty == false
            currentThread.Yield()
        endIf 
      endIf
      if currentThread.priority == 3
        if priority3.size > 1 || priority4.IsEmpty == false || priority5.IsEmpty == false
            currentThread.Yield()
        endIf 
      endIf
      if currentThread.priority == 4
        if priority4.size > 1 || priority5.IsEmpty == false
            currentThread.Yield()
        endIf
      endIf
      if currentThread.priority == 5
        if priority5.size > 1
            currentThread.Yield()
        endIf 
      endIf
    currentInterruptStatus = ENABLED
    endFunction

-----------------------------  ThreadPrint  ---------------------------------

  function ThreadPrint (t: ptr to Thread)
    --
    -- This function prints a single line giving the name of thread "t",
    -- its status, and the address of the Thread object itself (which may be
    -- helpful in disnguishing Threads when the name is not helpful).
    --
      var
        oldStatus: int = SetInterruptsTo (DISABLED)
      print ("  Thread \"")
      print (t.name)
      print ("\"    status=")
      switch t.status
        case JUST_CREATED:
          print ("JUST_CREATED")
          break
        case READY:
          print ("READY")
          break
        case RUNNING:
          print ("RUNNING")
          break
        case BLOCKED:
          print ("BLOCKED")
          break
        case UNUSED:
          print ("UNUSED")
          break
        default:
          FatalError ("Bad status in Thread")
      endSwitch
      print ("    (addr of Thread object: ")
      printHex (t asInteger)
      print (")")
      nl ()
      -- t.Print ()
      oldStatus = SetInterruptsTo (oldStatus)
    endFunction

-----------------------------  Thread  ---------------------------------

  behavior Thread

      ----------  Thread . Init  ----------

      method Init (n: String, newpri: int)
        --
        -- Initialize this Thread object, but do not schedule it for
        -- execution yet.
        --
          name = n
          priority = newpri
          status = JUST_CREATED
          -- The next line initializes the systemStack array, without filling it in.
          *((& systemStack) asPtrTo int) = SYSTEM_STACK_SIZE
          systemStack [0] = STACK_SENTINEL
          systemStack [SYSTEM_STACK_SIZE-1] = STACK_SENTINEL
          stackTop = & (systemStack[SYSTEM_STACK_SIZE-1])
          regs = new array of int { 13 of 0 }
        endMethod

      ----------  Thread . Fork  ----------

      method Fork (fun: ptr to function (int), arg: int)
        --
        -- This method will schedule this thread for execution; in other words
        -- it will make it ready to run by adding it to the "ready queue."  This
        -- method is passed a function and a single integer argument.  When the
        -- thread runs, the thread will execute this function on that argument
        -- and then terminate. This method will return after scheduling this
        -- thread.
        --
          var
            threadpri : int
            oldIntStat, junk: int
          oldIntStat = SetInterruptsTo (DISABLED)
          -- print ("Forking thread...\n")
          initialFunction = fun
          initialArgument = arg
          stackTop = stackTop - 4
          *(stackTop asPtrTo int) = ThreadStartUp asInteger
          status = READY
          threadpri = self.priority
          if threadpri == 1
            priority1.AddToEnd(self)
          endIf
          if threadpri == 2
            priority2.AddToEnd(self)
          endIf
          if threadpri == 3
            priority3.AddToEnd(self)
          endIf
          if threadpri == 4
            priority4.AddToEnd(self)
          endIf
          if threadpri == 5
            priority5.AddToEnd(self)
          endIf
          junk = SetInterruptsTo (oldIntStat)
        endMethod

      ----------  Thread . Yield  ----------

      method Yield ()
        --
        -- This method should only be invoked on the current thread.  The
        -- current thread may yield the processor to other threads by
        -- executing:
        --       currentThread.Yield ()
        -- This method may be invoked with or without interrupts enabled.
        -- Upon return, the interrupts will be in the same state; however
        -- since other threads are given a chance to run and they may allow
        -- interrupts, interrupts handlers may have been invoked before
        -- this method returns.
        --
          var
            nextTh: ptr to Thread
            oldIntStat, junk: int
          -- ASSERT:
              if self != currentThread
                FatalError ("In Yield, self != currentThread")
              endIf
          oldIntStat = SetInterruptsTo (DISABLED)
          -- print ("Yielding ")
          -- print (name)
          -- print ("\n")
          nextTh = readyList.Remove ()
          if nextTh
            -- print ("About to run ")
            -- print (nextTh.name)
            -- print ("\n")
            if status == BLOCKED
              FatalError ("Status of current thread should be READY or RUNNING")
            endIf
            status = READY
            readyList.AddToEnd (self)
            Run (nextTh)
          endIf
          junk = SetInterruptsTo (oldIntStat)
        endMethod

      ----------  Thread . Sleep  ----------

      method Sleep ()
        --
        -- This method should only be invoked on the current thread.  It
        -- will set the status of the current thread to BLCOKED and will
        -- will switch to executing another thread.  It is assumed that
        --     (1) Interrupts are disabled before calling this routine, and
        --     (2) The current thread has been placed on some other wait
        --         list (e.g., for a Semaphore) or else the thread will
        --         never get scheduled again.
        --
          var nextTh: ptr to Thread
          -- ASSERT:
              if currentInterruptStatus != DISABLED
                FatalError ("In Sleep, currentInterruptStatus != DISABLED")
              endIf
          -- ASSERT:
              if self != currentThread
                FatalError ("In Sleep, self != currentThread")
              endIf
          -- print ("Sleeping ")
          -- print (name)
          -- print ("\n")
          status = BLOCKED
          nextTh = readyList.Remove ()
          if nextTh == null
            FatalError ("Ready list should always contain the idle thread")
          endIf
          Run (nextTh)
        endMethod

      ----------  Thread . CheckOverflow  ----------

      method CheckOverflow ()
        --
        -- This method checks to see if this thread has overflowed its
        -- pre-alloted stack space.  WARNING: the approach taken here is only
        -- guaranteed to work "with high probability".
        --
          if systemStack[0] != STACK_SENTINEL
            FatalError ("System stack overflow detected!")
          elseIf systemStack[SYSTEM_STACK_SIZE-1] != STACK_SENTINEL
            FatalError ("System stack underflow detected!")
          endIf
        endMethod

    ----------  Thread . setPriority ----------

    method setPriority (newpri: int)
      --
      -- Sets thread's priority to given integer (between 1 and 5)
      --
        self.priority = newpri
      endMethod

  ----------  Thread . getPriority ----------

  method getPriority ()
    --
    -- gets and returns thread's priority
    --
    var
      currentpri : int
      currentpri = self.priority
      return currentpri
    endMethod

      ----------  Thread . Print  ----------

      method Print ()
        --
        -- Print this object.
        --
          var i: int
              oldStatus: int
          oldStatus = SetInterruptsTo (DISABLED)
          print ("  Thread \"")
          print (name)
          print (" Priority : ")
          print(priority)
          print ("\"    (addr of Thread object: ")
          printHex (self asInteger)
          print (")\n")
          print ("    machine state:\n")
          for i = 0 to 12
            print ("      r")
            printInt (i+2)
            print (": ")
            printHex (regs[i])
            print ("   ")
            printInt (regs[i])
            print ("\n")
          endFor
          printHexVar ("    stackTop", stackTop asInteger)
          printHexVar ("    stack starting addr", (& systemStack[0]) asInteger)
          switch status
            case JUST_CREATED:
              print ("    status = JUST_CREATED\n")
              break
            case READY:
              print ("    status = READY\n")
              break
            case RUNNING:
              print ("    status = RUNNING\n")
              break
            case BLOCKED:
              print ("    status = BLOCKED\n")
              break
            case UNUSED:
              print ("    status = UNUSED\n")
              break
            default:
              FatalError ("Bad status in Thread")
          endSwitch
          oldStatus = SetInterruptsTo (oldStatus)
      endMethod

  endBehavior

endCode
