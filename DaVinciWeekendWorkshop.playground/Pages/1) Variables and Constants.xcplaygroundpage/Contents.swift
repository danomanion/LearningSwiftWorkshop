/*:
[Previous](@previous)

# Variables and Constants

**Constants** are things that don't change.
If we were modeling a car, some constants might be the Year, Make and Model.  

In Swift we declare a constant with the `let` keyword, and can set it to a value with the equal sign `=`.

    let carMake = "Nissan"
    let carModel = "Xtera"
    let carYear = 2004

**Variables** are like constants, except they can change.  

Sticking with our car example, mileage, color and if it's moving could all be variables.

Variables are declared with the `var` keyword and are assigned with `=`.

    var carMileage = 109328.1
    var carColor = "red"
    var carIsMoving = false
    var myCar = Car(make: "Nissan", model: "Xterra", year: 2004);

Variables can change value after assignment, unlike constants.

    let appleCount  = 10                        // a constant
    let bananaCount = 6                         // a constant
    var fruitCount  = appleCount + bananaCount  // a variable, from constants

    let pearCount = 3                           // another constant
    fruitCount = fruitCount + 3                 // update variable by adding to itself
*/

/*:
![Look](Look.png)
> We can use *variables* and *constants* to hold values.  
>
> For now we will stick with mathmatic operations, and holding numbers.
*/

let appleCount  = 10                        // a constant
let bananaCount = 6                         // a constant
var fruitCount  = appleCount + bananaCount  // a variable, from constants

let pearCount = 3                           // another constant
fruitCount = fruitCount + 3                 // update variable by adding to itself

let sodaCount = 4
let eggCount = 1 * 12

let total = fruitCount + sodaCount + eggCount

/*:
![Fix](Fix.png)
> Get rid of the following errors.
>
> These are a bit contrived and lack context because we're just getting started, but take note of the sorts of things that *don't work* in Swift.
*/

var altitude = 1000
altitude = 999

// MPH
var speedMPH = 1000

let one = 1

var something = 7

var anotherThing : Int

/*:
![Write](Write.png)
> These should look familiar.  Let's solve them again, but use constants and variables to make it more clear what is going on.
>
> 1. How many minutes in a week?
> 2. If you are 38 and 1/2 years old, how many days old are you?
> 3. I have 7 pizzas with 8 slices each.  How many slices do each of my 5 friends get?
*/

// 1.
let minutesInHour = 60
let hoursInDay = 24
let daysInWeek = 7

var answerOne = (minutesInHour * hoursInDay) * daysInWeek

print("There are \(answerOne) minuts in a week?")


// 2.
var yourAge = 38.5
let daysInYear = 365.25

var answerTwo = 38.5 * 365.25

print("You are \(answerTwo) days old.")


// 3.
var pizzas = 7.0
let pizzaSlices = 8.0
var numberOfFriends = 5.0

var answerThree = (pizzas * pizzaSlices) / numberOfFriends

print("My friends and I get to have \(answerThree) slices of pizza.")


/*:

[Next](@next) we learn a lot more about what a variables and constants really are, and how we can use them. 
*/
