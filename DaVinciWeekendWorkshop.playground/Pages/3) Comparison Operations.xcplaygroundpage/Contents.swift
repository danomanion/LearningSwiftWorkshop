/*:
[Previous](@previous)

# Conditional Statements

Math is good, but what we need to be able to make decisions and do different things based on some conditions.  

We need to be able to **do stuff** based on **what we know**.

If the temperature is below freezing, suggest a jacket.

If cost of your mocha latte is more than the cash in your pocket, order a water.

In programming we combine *comparison operators* with *conditional statements* like the `if` statement.  A simple `if` statement looks like this:

    if airTemp < 32 {
        print("NorthFace time Boulder!")
    }

But what about other temperatures?  If we have just two conditions, then `if / else` statements do the trick.

    if airTemp < 32 {
        print("NorthFace time Boulder!")
    } else {
        print("Shorts time!")
    }

Hmmmmm.  That doesn't seem quite right.  Maybe `if / elseif` is the way to go.


    if airTemp < 32 {
        print("NorthFace time Boulder!")
    } else if airTemp < 60 {
        print("Flannel time!")
    } else {
        print("Shorts time!")
    }

#### ! Not Operator
* You can "reverse" or "flip" a boolean expression with `!`
* `!true` is `false`


    var warningLightOn:Bool = true

    if !warningLightOn {
        // continue normal operation
    } else {
        print("Warning light is on")
    }


# Comparison Operators
The **comparisons** above are what makes this possible.  The comparisons are `airTemp < 32` and `airTemp < 60`.  Each returns `true` or `false` the two possible values of the **boolean** data type.

These are all the comparison operators and each returns a `Bool` value.

#### == Equals
* Are two expressions the same?
* `1 = 1`

#### != Not Equals
* Are two expressions not the same?
* `1 != 2`

#### < Less Than
* Is the first expression smaller than the second?
* `1 < 2`

#### > Greater Than
* Is the first expression larger than the second?
* `2 > 1`

#### <= Less Than or Equal To
* Is the first expression smaller or the same as the second?
* `1 <= 1`

#### >= Greater Than or Equal To
* Is the first expression larger or the same as the second?
* `1 >= 1`

### Remember
Each clause in an `if/else if` statement must evaluate to either `true` or `false`.
*/

/*:

![Look](Look.png)
> This is a Playground, so make sure you're playing with these working examples and observe
> how they work.
>
> 1. Change `airTemp` to different values. Get all the parts of the conditional to fire.
> 2. Change `doILikeRed` between the boolean values.  Observe the different ways to form a conditional statement.
> 3. Be careful how you name things and form logic clauses.  You can cause a real mess.
*/

func clothingAdviceForTemp(temp:Int) -> String {
    if temp < 32 {
        return "NorthFace time Boulder!"
    } else if temp < 60 {
        return "Flannel time!"
    } else {
        return "Shorts time!"
    }
}

clothingAdviceForTemp(125)
/* 1. change this value */



/* 2. change this value */
var doILikeRed = true

if doILikeRed == true {
    print("I like red!")
}

if doILikeRed {      // don't need '== true'
    print("I still like red!")
}

if !doILikeRed {      // notice the "!"
    print("I don't like red.")
}



/* 3. This is not good */
func doThis(a:Bool, b:Bool, c:Bool, d:Int, e:Float) {
    if a == c {
        if Int(e) < d {
            print("Fire missles!")
        } else if b == c {
            print("Send Tweet")
        } else {
            print("Request appointment")
        }
    } else {
        print("set background color to blue")
    }
}

doThis(true, b: false, c: false, d: 23, e: 23.0)


/*:
Note in the `doesLikeRed` case above we don't have to compare the variable to true.  The `== true` is implied.  
So looking farther back, you could write `if (airTemp < 32) == true` but that's just silly.

If you have a `Bool` value, it can also be used alone.

Also an `if` statement can be placed inside the clause of another statement.  We call this "nesting" if statements.


    if something == true {
        if someOtherThing == true {
            // I should end up here.
        } else {
            // not here
        }
    } else {
        // or here
    }

Be warry of too many nested if statements - they can make code very hard to read.

## Verbosity
> Apple ObjC and Swift developers are pretty "verbose" and write long function names with very descriptive argument names.
>
> Use specific, consistent names and namining conventions and
> follow the patterns you see in Apple's frameworks and documentation.

![Fix](Fix.png)
> Most of our earlier examples have been *syntax* errors.  With conditionals, we start seeing semantic errors appear.
>
> Make sure each of these code snippets AND does what we want (whatever you think that may be).
*/


var willPrintOut = true

if willPrintOut {
    print("make this print")
}


var willNotPrint = true

if willNotPrint != true {
    print("don't print this. print nothing here.")
}


var valueOne = false
var valueTwo = false

if valueOne {
    print("nope - don't print this")
} else if valueTwo {
    print("not me either")
} else {
    print("this should print")
}

var valueThree = true
var valueFour = false

if valueThree {
    if valueFour {
        print("print this nested guy")
    } else {
        print("not this dude")
    }
    } else {
        print("this is right out")
}

/*:

> A lot of programming is like the exercise above.  
> You read the code, you know what it *should do* - what code should 
> run, what the code should do, but it doesn't.
>
> Learning to patiently read code and process what it's doing 
> (and what can go wrong) is a lot of what we do.


![Write](Write.png)
> Should I drive?
> 
> If I've had more than 3 beers: print "NO"
> If fewer hours have passed than beers I had: print "NO" 
> Otherwise: print "YES"
>
> Write a function with if/then/else statements to tell me if I can drive home based on how much beer I've had, and how long I've waited.
*/

var beerCount = 4
var hoursSinceLastBeer = 2

// PLEASE NOTE: when in doubt, don't code: call a cab

func shouldIDriveAfter(beers:Int, hours:Int) {
    if beers > 3 {
        print("No, Don't drive yo!")
    } else {
        if beers < hours {
            print("Yes, Drive and be free!")
        } else {
            print("No, Don't drive yo!")
        }
    }
}

shouldIDriveAfter(beerCount, hours: hoursSinceLastBeer)

/*:
In the above example that good names were choosen for variables.  

Sure, you could use the variables wrong, but by choosing good names it makes our code more **readable** which is a good thing and help you or others find errors.

[Next](@next) we add logic to the mix
*/
