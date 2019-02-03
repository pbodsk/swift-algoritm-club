// Copyright (c) 2018 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 [Previous Challenge](@previous)
 ## Challenge 2
 Check for balanced parentheses. Given a string, check if there are `(` and `)` characters, and return `true` if the parentheses in the string are balanced.
 ```
 // 1
 h((e))llo(world)() // balanced parentheses
 // 2
 (hello world // unbalanced parentheses
 ```
 */

var okString = "h((e))llo(world)()"
var failString = "(hello world"
var sneakyString = ")this will break()"

// your code here
func checkParentheses(_ string: String) -> Bool {
    var paranthesesStack = Stack<String>()
    for char in string {
        if char == "(" {
            paranthesesStack.push("\(char)")
        }
        if char == ")" {
            if paranthesesStack.isEmpty {
                return false
            }
            paranthesesStack.pop()
        }
    }
    
    return paranthesesStack.isEmpty
}

checkParentheses(okString) // should be true
checkParentheses(failString) // should be false
checkParentheses(sneakyString)
