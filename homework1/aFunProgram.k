code aFunProgram
    var input: int
    var convertedChar: char

    function main ()
        while 1
            input = getCh()
            if chartoInt('q') == input
                debug
            else
                convertedChar = intToChar(input)
                printChar(convertedChar)
        endWhile
    endFunction
endCode 
