/*:
[Previous](@previous)
# Types
* Swift is a *strongly-typed* language, this means the compiler must know what *type* an variable or constant is.  
  * We've been able to skip this, because Swift *implies* the type for you.
  * Code examples were chosen to avoid this problem while basics were learned.

## Specify type at declaration
* `let aConstant:TypeName = Value`
* `var aVariable:TypeName = Value`
* add a colon and the type's name after the name
* all names are **case sensative** in Swift

#### Int
An `Int` is an *integer: a positive or negative whole number (with no decimal)*.

    let aa = 1
    let bb:Int = 1

#### Float
A `Float` is a *floating-point number: a positive or negative number with a decimal*.

    var cc = -1.0
    var dd:Float = 11.0

#### Double
A `Double` is a **really big** *floating-point number: a positive or negative number with a decimal*.

    var ee = -1.0
    var ff:Double = 11.0

#### Bool
A `Bool` is either `true` or `false`

    var gg = true
    var hh:Bool = false

#### String
A `String` is a *string of characters* and set appart with double-quotes.

    let ii = "Hello"
    let jj:String = "World!"

"\n" is the **newline character** - it's the same as pressing the `Enter` key

### Type Casting
When we have one type, and need another, we may have to *cast*

    let kk:Int = 1
    let ll:Float = 1.0

    kk + ll            // ERROR - different types
    Float(kk) + ll     // "cast" kk to a Float, then add them together
    kk + Int(ll)       // "cast" ll to an Int, then add them together

### Printing the type
We can get the type of a variable or constant with `.dynamicType`

    let mm:Float = 2.0
    mm.dynamicType     // returns "Float.Type"


## Functions
* *Functions* are self-contained chunks of code that perform a specific task. 
* You give a function a name that identifies what it does, and this name is used to "call" the function to perform its task when needed.  
* Functions allow us to re-use code and make our code readable.
* Functions have a *name*, take zero to many *arguments* and have a *return type*.

### The print() function
* `print(param)` is a built-in function for printing information
    * this function is named "print"
    * it takes one argument
    * it prints what you pass it to the *console* as a String
    

    let printMe:String = "Hello World!"
    print(printMe)                        // prints "Hello World!\n" on console

    print(1+1)                            // prints "2\n" but this a weird use case

    var someValue:10 = 10
    print("The value is " + someValue)    // prints "The value is 10\n"

### Creating functions
* Finally.  Now we see how to *program a computer*
* Writting our own functions allows us to solve specific parts of a problem.


    func square(value:Int) -> Int {
        return value * value
    }

    var squared = square(2)               // squared is equal to 4


### Executing functions
* Functions are only *executed when they are called*.
* Notice below, the arguments each have a type associated with them


    func sayHelloTo(person:String) {      // takes one String
        print("Howdy \(person)!")
        // same as  print("Howdy " + person + "!")
    }

    sayHelloTo("Brooks")                  // prints "Howdy Brooks!\n"

### Passing parameters
* Functions with more than one argument, require a label for each past the first


    func addThese(first:Int, second:Int) -> Int {
        return first + second
    }

    var sum = addThese(1, second:3)
    print(sum)                            // prints "4\n"


*/

/*:
![Look](Look.png)
> Let's see the examples above in action
*/

/*** Casting has an impact on accuracy ***/
var intValue:Int = 10
var floatValue:Float = 1.5

intValue.dynamicType
floatValue.dynamicType

// var resultOne = intValue + floatValue     // ERROR
var intResult   = intValue + Int(floatValue)
var floatResult = Float(intValue) + floatValue



/***  One argument, returns an Integer ***/
func square(value:Int) -> Int {
    return value * value
}

var squared = square(2)



/***  One String argument, returns nothing ***/
func sayHelloTo(person:String) {
    print("Howdy \(person)!")
    print("Howdy " + person + "!")
}

sayHelloTo("Brooks")



/***  Two arguments, returns Integer ***/
func addThese(first:Int, second:Int) -> Int {
    return first + second
}

var result = addThese(1, second: 3)
print(result)


/*:
![Fix](Fix.png)
> A magnitude of errors can be created by not having types align correctly.
>
> Types must align for things like arithmatic operations, as well as when calling functions.
>
> Fix the two sections below separately.
*/

// these are all snippets that should be valid
var aNumber:Int = 1

var aBool:Bool = false

func addTwoFloat(floatOne:Float, floatTwo:Float) -> Float {
    return floatOne + floatTwo
}

func addTwoInt(intOne:Int, intTwo:Int) -> Int {
    return intOne + intTwo
}

addTwoInt(550, intTwo: Int(11.0))

/*:
![Write](Write.png)
> Let's write a few functions.
>
> 1. Write `func weeksToMinutes( weeks:Int ) -> Int` that returns the number of minutes in given number of weeks.
> 2. Write `func yearsToDays( years:Float ) -> Float` that returns the number of days in given number of years.
> 3. Write a function that takes `firstName` and `lastName`, returns nothing, but prints a message using *both arguments*.
*/

// 1.
func weeksToMinutes(weeks:Int) -> Int {
    return weeks * (7 * (60 * 24))
}

weeksToMinutes(4)

// 2.
func yearsToDays( years:Float ) -> Float {
    return years * 365.25
}

yearsToDays(33)

// 3.
func nameCat(firstName:String, lastName:String) {
    print("\(firstName) \(lastName)")
}

nameCat("Bob", lastName: "LeSparks")

/*:
[Next](@next) we learn about comparisons and modifying control flow
*/
