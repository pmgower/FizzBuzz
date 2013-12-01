def FizzBuzz(maxNumber=100)
    1.upto(maxNumber) do |i| 
        OutputFizzBuzz(i)
    end
end

def OutputFizzBuzz(number)
    #default output string to empty
    output = ''
    
    if (number % 3 == 0)
        output += 'Fizz'
    end
    
    if (number % 5 == 0)
        output += 'Buzz'
    end

    #only output the number if the output hasn't already been set
    if (output.length == 0)
        output = number
    end

    #actually output the value to the screen
    puts output
end

#to_i will return 0 if no integer is found in the string
firstArgument = ARGV.shift.to_i
if (firstArgument > 0)
    FizzBuzz(firstArgument)
else
    FizzBuzz()
end
