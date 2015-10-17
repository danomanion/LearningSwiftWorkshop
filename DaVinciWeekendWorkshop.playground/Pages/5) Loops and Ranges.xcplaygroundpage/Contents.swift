/*:
[Previous](@previous)

# Loops and Range Operators

Swift provides two kinds of **loops** that perform a set of statements a certain number of times:
* The `for-in` loop performs a set of statements for each item in a sequence.
* The `for` loop performs a set of statements until a specific condition is met, typically by incrementing a counter each time the loop ends.

Swift includes two range operators, which are shortcuts for expressing a range of values.

#### For-In

The `for-in` loop itterates (or "goes over") a range of things.  For now, we'll look at a range of numbers.

    for index in 1...4 {
        print("\(index) squared is \(index * index)")
    }

    // 1 squared is 1
    // 2 squared is 4
    // 3 squared is 9
    // 4 squared is 16

Swift gives us a cool thing called the *closed range operator* `...` to itterate through a range of numbers, inclusive of both numbers.  So `1...3` will go 1, 2, 3. `4...6` will go 4, 5, 6.

The *open range operator* `..<` to itterate through a range of numbers, inclusive of both numbers.  So `1..<4` will go 1, 2, 3.

In this example `index` is set to the first value in the range (1), and the code between the curly braces `{ }` is executed.  Then `index` is set to the next value in the range (2), the code is executed again.  It **loops** like this until it gets to the end of the range (4).

Index is a *constant* not a variable, you can not change it's value.  

Variables can be used to define the range as well.

    var start = 1
    var end   = 4
    for index in start...end {
        print("\(index) squared is \(index * index)")
    }

    // 1 squared is 1
    // 2 squared is 4
    // 3 squared is 9
    // 4 squared is 16

This is pretty neat.  You can get each character of a string as well.

    for character in "howdy" {
        print( character )
    }

    "h"
    "o"
    "w"
    "d"
    "y"

Swift *Collections* support *fast itteration* using the `for / in` loop.

![Look](Look.png)
> Let's take a look at one of the examples we just used.
> I always use `ii` as an itterator.
*/

import XCPlayground
import Foundation

var start = 1
var end   = 4
for ii in start...end {
    print("\(ii) squared is \(ii * ii)")
    XCPCaptureValue("value", value: ii)

//    After you see the timeline, uncomment this next line
    XCPCaptureValue("sin", value: sin(Double(ii)))
}

/*:

`(4 times)` is strange output, huh?

If we open the *Console Output* window we will see the output of all the print() statements we've been making.

Open and close the Console with `CMD + SHIFT + Y`.

![Console Output](ConsoleOutput.png)

That's *kind of neat* but now press `CMD + OPT + ENTER` to open the Assitant Editor and see the **Timeline**.

### Note on imports
Above we imported `XCPlayground` and `Foundation`.  These are *Apple frameworks* (modules?) that we can harness in our code.
 * `XCPlayground` gave us the `XCPCaptureValue` function
 * `Foundation` gave us `sin` function


    import XCPlayground
    XCPCaptureValue("Some name", valueToWatch)
    //CMD + OPT + ENTER to see timeline


## Nested Loops
You can put loops inside of loops, too.  This is called a **nested loop**.  

Find the output of this code in the *Timeline* and the *Console Output*.
*/

print("**********************")

var outerMax  = 3
var innerMax  = 4

for ii in 1...outerMax {
    for jj in 1...innerMax {
        print("\(ii) * \(jj) = \(ii * ii)")
//        XCPCaptureValue("outerMax", value: ii)
//        XCPCaptureValue("innerMax", value: jj)
    }
}

/*:
The real power of loops is when you change something that's stays around when the loop is done.  

Say we want to calculate a *factorial*, where the facotorial of 5 (5!) is 5 x 4 x 3 x 2 x 1.
*/

print("+++++++++++++++")

var value   = 10
var factor  = 1   // why do we start with 1?

for ii in 1...value {
    factor = factor * ii
}

print("\(value)! is \(factor)")


/*:

![Fix](Fix.png)
> Triange Man, Triangle Man....
>
> We want to print a triange to the console, by specifying the number of rows.  The following has 4 rows.
>
>       *
>       **
>       ***
>       ****
> 
> We have only used the `print(string)` function so far, but it can do more.  `print(String, terminator:"")` command is very similar, but it doesn't start a new line.  So `print(string)` prints a string to the console, then presses *return* (basically).  `print(string, terminator:"")` prints to the console, then DOES NOT press *return*.  Calling `print("")` (with and empty string) is just like pressing *return*.
*/


print("===============")

var numberOfRows = 10

for ii in 1...numberOfRows {
    var str = ""
    for jj in 1...ii {
        print("*", terminator:"")
    }
    print("")
}


/*:
![Write](Write.png)
> For a range, we want to add up the values of all the even numbers, and the values of all the odd numbers.
>
> We use modulus `%` to determine if odd or not.  `4 % 2 == 0` and `5 % 2 == 1`
>
> *Modulus* is the *remainder* after a divsion operation.  All even numbers divide by two evenly (with no remainder), odd numbers divided by two always have a remainder of one.
>
> Call the `isOdd()` function in your loop.
*/

var evenSum         = 0
var oddSum          = 0
var startingNumber  = 1
var endingNumber    = 10

func isOdd(value:Int) -> Bool {
    return value % 2 == 1
}

for ii in startingNumber...endingNumber {
    if isOdd(ii) {
        oddSum += ii
    } else {
        evenSum += ii;
        
    }
}

print("odd total: \(oddSum)", terminator:"")
print("even total: \(evenSum)", terminator:"")

/*:

[Next](@next) a little review, then something that was new to me with Swift, Optionals.
*/
