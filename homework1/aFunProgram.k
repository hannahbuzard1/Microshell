code aFunProgram
    var letters: char
    var count: int = 0 -- counter to check whether q is the first letter or not
    function main ()
        while 1 > 0 --continously loop
           count = count + 1 
           letters=GetCh() --use GetCh to receive user input
           if letters == 'q' -- if q is typed and it is the first letter, then debug
               if count == 1
                   debug
               else
                   printChar(letters) --echo input otherwise
               endIf
           else
               printChar(letters) --echo input from user
           endIf
           if charToInt(letters) == 10 --if enter key is hit, then reset counter for 'q'
               count = 0
           endIf 
        endWhile
    endFunction
endCode
