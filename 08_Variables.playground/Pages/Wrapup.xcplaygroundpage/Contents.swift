/*:
 ## Wrapup
 
 You’ve learned some very important concepts in this playground:
 
 - Values declared with `let` are constants, and can’t be changed once a value is assigned. These values are called _immutable_.
 - Values declared with `var` are variables, and can be assigned new values over time. These values are called _mutable_.
 - A mutable value can be used as part of an assignment statement to itself: `score = score + 10`.
 - Compound assignment operators allow mutable values to be updated: `score += 10`.
 - Using constants and variables in the correct places helps make your code safer and easier to understand.
 
 Practice what you’ve learned with the upcoming exercises.
 
[Previous](@previous)  |  page 11 of 13  |  [Next: Exercise: Making a Shopping List](@next)
*/
func sum(x: Int, y: Int) -> Int {
    let s = x + y
    //print(s)
    return s
}
print(sum(x: 2, y: 3))

//import Darwin
//func player1ScoreCard(player: String) -> Int{
//    var total = 501
//    var score = 0
//    print("\nName: ", player)
//    for i in 1...5{
//        print("--> Round #\(i):")
//        for i in 1...3{
//            score = Int(arc4random_uniform(61))
//            print("\(i): \(score)")
//            total -= score
//        }
//        print("Round# \(i) == score: \(total)")
//    }
//    print("Total: \(total)")
//    return total
//}
//player1ScoreCard(player: "Mehran")
//player1ScoreCard(player: "Ravi")
////print("\(player1ScoreCard(player: "Mehran"))\t\t\t\t\(player1ScoreCard(player: "Ravi"))")

