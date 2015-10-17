/*:
[Previous](@previous)

# Optionals
You use *optionals* in situations where a value may be absent.  I like to think of them as a box.  You call a method, and you get a box.  You have to look in the box to see what it is.

Until now, all our variables and constants have had a value.  Our world has been very certain.

This was a new concept for me.  Optionals aren't new, but I had never heard of (them)[http://en.wikipedia.org/wiki/Option_type].

Here is an example.  The `Int()` method returns an optional type.  But not every string can be converted to a numeric value.  "42" converts, but not "hey", "howdy" or even "forty-two".  So `Int()` doesn't return an `Int` but an `Int?`.  Optionals are indicated with a `?`.

The signature of `Int()` is: `Int() -> Int?` (sorta)

    let someNumber = "42"
    let convertedNumber = Int(someNumber)

Let's add our type annotations in, to really see what's happening.

    let someNumber:String = "42"
    let convertedNumber:Int? = Int(someNumber)

`convertedNumber` is an "optional int" written `Int?` in code.

To extract the value of the optional, we must unwrap it.

#### It's a box.  We have to look in the box.

What if the box is empty?  What happens when the value is absent?  What does this return `"fortytwo".toInt()` if we call it?

### nil
`nil` is a special value in Swift.  It's the value when the *box is empty*.  Only conditionals can use a `nil` value.

    var someNumber:Int = 42
    someNumber = nil            // DOES NOT COMPILE

    var anotherNumber:Int? = 42
    anotherNumber = nil         // VALID.  anotherNumber has no value set

    Int("fortytwo")          // returns nil

If you declare an optional variable, and don't set a value, then it has a value of `nil`.

    var iAmNil:String?


**NOTE** optional constants declared with no value will always be `nil` (since they can't change).

### If statements and Forced Unwrapping

Now we see how we can *look into the box*.

Since optionals can have their value set to `nil`, we can test for that in an `if` statement.

    if iAmNil != nil {
        print("The String is not nil")
    }

Inside the `if` now we know *the box has something in it* but we *don't know what it is*.  `iAmNil` isn't a string, so we can not do this: <code class="code-voice-bad">print("\\(iAmNil) is not nil")`.  That will work, but it will print out "Optional("not any more") is not nil".

The `!` force unwraps a conditional.  Once you know the box has something in it, you can use the `!` to get the value out.

    var iAmNil:String? = "nope"

    if iAmNil != nil {
        print("\(iAmNil!) is not nil")
    }

**NOTE** if you use `!` to unwrap a `nil` value, your program will CRASH with a runtime error.  That's bad.  Always make sure you know an optional has a value, before you unwrap it.  The following mechanisms make that easier.

### Optional Binding

Swift provides a way to check if an optional has a value, and extract it if it does.  This is called *optional binding* and it takes place in conjunction with an `if` statement.

    var optionalValue:Int? = 42

    if let unwrappedValue = optionalValue {
        print("the value is \(unwrappedValue)")
        print("which is the same as \(optionalValue!)")
    } else {
        print("the value is nil")
    }

This is most frequently done when calling a function or method that returns an optional value.

    var string = "forty two"

    if let number = Int(string){
        print("\(string) converted to integer \(number)")
    } else {
        print("\(string) cannot convert to an integer")
    }

Optional binding is a *syntactic sugar* - something that helps us write less code.  They can be chained too.

    if let result = something.optionalOpertaion() {
        if let innerResult = result.optionalOperation()
    }

This is

Before we get to exercises, here's a little something fun for you - a couple more Playgound features:  **Quick Look** and **Show Result**

*/
import Foundation
import UIKit
import XCPlayground

let address = "https://cdn1.cdnme.se/cdn/6-2/790625/images/2010/hang_in_there_100782799.jpg"
if let url:NSURL = NSURL(string: address),
    let data:NSData = NSData(contentsOfURL: url),
    let anotherView:UIImage = UIImage(data: data) {
        anotherView  /** hover over eyebal and + on the right of this line **/
        
        /** Uncomment this, and press CMD + OPT + ENTER to see full size image **/
        XCPCaptureValue("hang in there", value:anotherView)
}


/*:
![Look](Look.png)
> Here we create a view, and check it's background color.
>
> UIColor backgroundColor returns a `UIColor?`
*/

let myFrame = CGRect(x: 0, y: 0, width: 50, height: 50)
let someView:UIView = UIView(frame:myFrame)

var backColor:UIColor? = nil
backColor.dynamicType

if let color = backColor {
    print("a color is set")
} else {
    print("no color is set")
}

someView.backgroundColor = UIColor.redColor()
someView.backgroundColor = UIColor.purpleColor()
someView.backgroundColor = UIColor.blueColor()
someView.backgroundColor = UIColor.greenColor()

backColor = someView.backgroundColor

if let color = backColor {
    print("a color is set")
} else {
    print("no color is set")
}

/*:

![Fix](Fix.png)
> Here are some examples of erroreous code with Optionals.
> 
> It is helpful to see what the errors look like, and how to fix them.
*/

var aString:String? = "howdy!"
aString = nil

if let str = aString {
    print("\(str) defined")
}

var intVal:Int? = Int("this")

var fail:Double? = nil
print(fail)


/*:
Skipping Write this time.

[Next](@next) up, Objects
*/
