/*:
[Previous](@previous)

# Logical Operations

Logical operators modify or combine the Boolean logic values true and false. 

Swift supports the three standard logical operators found in C-based languages:
* Logical NOT `!a`
* Logical AND `a && b`
* Logical OR  `a || b`

#### ! NOT Operator
A logical NOT `!a` operator *flips* the value of a Boolean to it's opposite: `true` becomes `false`, `false` becomes `true`.

An `!` appears directly in front of the value it's negating with no space. This is called a *prefix* operator.

Consider the following snippet...

    var supportedFormat = true

    if !supportedFormat {
        print("This is not a supported format")
    }

The above statement `!if supportedFormat` is read, "if not supportedFormat".  
We should note that `!if supportedFormat` is the same as `supportedFormat == false`.

Being careful naming boolean variables can help keep code consice.  
Apple uses consistent, active words in a lot of their code. 

Variable names like `isActive`, `isReady`, `shouldDenyAccess` are pretty clear all on their own.

#### && AND Operator

The logical AND operator `a && b` creates logical expressions where both values must be `true` for the overall expression to also be `true`.

If either value is `false`, the overall expression will also be `false`. 

In fact, if the first value is `false`, the second value won’t even be evaluated, because it can’t possibly make the overall expression equate to `true`. 
This is known as *short-circuit evaluation*.

In this example, both values must be true.


    var isReady = true
    var isSet = true

    if isReady && isSet {
        print("Go!")
    } else {
        print("You must be both ready and set before going")
    }


#### || OR Operator

The logical OR operator `a || b` creates logical expressions in which only one of the two values has to be `true` for the overall expression to be `true`.

Like the Logical AND operator above, the Logical OR operator uses *short-circuit evaluation* to consider its expressions. If the left side of a Logical OR expression is `true`, the right side is not evaluated, because it cannot change the outcome of the overall expression.

Here, one of the values is `true` so the expression evaluates to `true`.

    var hasTicket = false
    var hasBribeMoney = true

    if  hasTicket || hasBribeMoney {
        print("Welcome to the movie")
    } else {
        print("no go")
    }

The logical operations can also be combined.  Remember to make your code readable (parenthesis helps with this), but the following is valid.

    var knowsPassword = true

    var knowsMothersMaiden = false
    var knowsFirstStreet = false
    var knowsMascot = true

    if  knowsPassword && ( knowsMothersMaiden || knowsFirstStreet || knowsMascot ) {
        print("seems legit")
    }
*/

/*:

![Look](Look.png)
> There are lots of ways to do the same thing.
>
> Look and play with these - which are the most clean to your eye?
*/

var isFreezing = true
var isWearingScarf = true

if isFreezing && isWearingScarf {
    // both true
    print("good to go")
} else if isFreezing {
    // only isFreezing true
    print("you need a scarf")
} else if isWearingScarf {
    // only isWearingScarf true
    print("it's not that cold.  take off the scarf")
} else {
    // both false
    print("also, good to go")
}

// there are a couple ways to skin this cat

if isFreezing {
    if isWearingScarf {
        print("good to go")
    } else {
        print("you need a scarf")
    }
} else {
    if isWearingScarf {
        print("it's not that cold.  take off the scarf")
    } else {
        print("also, good to go")
    }
}

// this one, is hard to read and confusing, but works

if !isFreezing {
    if !isWearingScarf {
        print("also, good to go")
    } else {
        print("it's not that cold.  take off the scarf")
    }
} else {
    if isWearingScarf {
        print("good to go")
    } else {
        print("you need a scarf")
    }
}

// the NOT ! operator is good for one off expressions
if isFreezing && !isWearingScarf {
    print("I bet you forgot your hat, too")
}


/*:
## Verbosity, again
Your *coding style* should be clean and easy to read.  Pick good names, and make your code *readable*.  It should read like a story:
* "If it's freezing and you have a scarf on: good to go"
* "If it's freezing and you don't have a scarf on: put on a scarf"
* "If it's not freezing and you don't have a scarf on: good to go"
* "If isFreezing and you're not wearing a scarf: take cheap jab about hat"


![Fix](Fix.png)
> The software that provides instructions on keeping our machine running is looking a bit rough.
>
> Without changing the print statements, fix the slew of errors below.
*/


let currentTemp = 900
let isRunning   = true
var maxTemp     = 1200
var minTemp     = 400

if isRunning {
    if (currentTemp < maxTemp) && (currentTemp > minTemp) {
        print("normal operating conditions")
    } else if currentTemp < minTemp {
        print("running to cold.  remove water.")
    } else {
        print("runing too hot.  add water.")
    }
} else {
    print("Call Maintenance!")
}

/*:
![Write](Write.png)
> We need to evaluate what someone has brought with them to the beach.  If they have forgetten something, we need to tell them.
>
> Soon we will learn more elegant ways of solving problems like this, but it's worth seeing how just 3 parameters makes solving a problem with `if` statements require quite a lot of code.

*/

var hasTowel     = false          // NOTE: you should always know where your towel is
var hasSunscreen = false
var hasShades    = false

// solve like in the isFreezing / wearingScarf example above (in Look)
func checkItemsForBeach(hasTowel:Bool, hasSunscreen:Bool, hasShades:Bool) {
    if hasTowel && hasSunscreen && hasShades {
        print("Go to the beach.")
    } else {
        var forgotenItems:String = ""
        
        if !hasTowel {
            forgotenItems += "Towl "
        }
        
        if !hasSunscreen {
            forgotenItems += "Sunscreen "
        }
        
        if !hasShades {
            forgotenItems += "Shades "
        }
        print("You are missing: \(forgotenItems).")
    }
}

checkItemsForBeach(true, hasSunscreen: true, hasShades: true)

/*:
Since we're talking about readability, notice the grouping of our variables and use of of whitespace (litterally spaces) to line things up.  That's fine (great even) Swift ignores extra whitespaces in code.

[Next](@next)
*/
