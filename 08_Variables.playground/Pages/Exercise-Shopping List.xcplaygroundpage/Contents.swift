
/*:
 ## Exercise: Making a Shopping List

 The constants below represent some of the things you might want to add to a shopping list:
*/
//let eggs = "1. Eggs"
//let milk = "2. Milk"
//let cheese = "3. Cheese"
//let bread = "4. Bread"
//let rice = "5. Rice"
//let newLine = "\n"
//: - callout(Exercise): Create a string variable with an initial value of `""`. Add each constant item above to the list, one at a time. Add a `newLine` in between each item. Remember you can join two strings using the `+` operator.
//var shoppingList = ""
//func shoppingBasket(){
//    print("====================\n::My Shopping List::\n====================")
//    shoppingList += eggs + newLine + milk + newLine + cheese + newLine + bread + newLine + rice
//    print(shoppingList + "\n====================")
//}
//shoppingBasket()
//
///

//import Darwin
//var scoreBoard: [String : Int] = ["Mehran": 0, "Ravi": 0, "Jack": 0, "Hector": 0, "Asa": 0, "Thomas": 0, "Rejosh": 0]
//func player1ScoreCard(player: String) -> Int{
//    var total = 501
//    var score = 0
//    //print("==========================\nPlayer Name: \t", player, "\n==========================")
//        for i in 1...3{
//            //print("--> Round #\(i):")
//            for i in 1...3{
//                score = Int(arc4random_uniform(61))
//                //print("\(i): \(score)")
//                total -= score
//            }
//            //print("Round# \(i) == score: \(total)")
//        }
//        //print("Total: \(total)")
//        return total
//}
//for playerName in scoreBoard{
//    //print("Player Name: ", playerName.key)
//    let x = player1ScoreCard(player: playerName.key)
//    scoreBoard[playerName.key] = x
//    //print("Score: ", x)
//}
////let winner = scoreBoard.min { player, score in player.value < score.value }
////print("\n***********************\n")
////print("WINNER IS: ", (winner?.key)!)
////print("Score: ", (winner?.value)!)
////print("========================")
////print(scoreBoard)
////print("========================")
//var myArr = Array(scoreBoard.values)
////print(myArr)
////print("========================")
//var sortedKeys = myArr.sorted()
////print(sortedKeys)
//print("==============\nPlayers\tScore\n==============")
//for xx in sortedKeys{
//    let index = sortedKeys.index(of: Int(xx))
//    for i in scoreBoard{
//        if i.value == sortedKeys[index!]{
//            print("\(i.key):\t", i.value)
//        }
//    }
//}




//if mehranScore < 0 {
//    print("\n:::::::::::::::::::\n: WINNER == RAVI")
//    print(": Mehran: ", mehranScore)
//    print(": Ravi: ", raviScore)
//    print(":::::::::::::::::::")
//}else if raviScore < 0 {
//    print("\n:::::::::::::::::::\n: WINNER == MEHRAN")
//    print(": Mehran: ", mehranScore)
//    print(": Ravi: ", raviScore)
//    print(":::::::::::::::::::")
//}else if mehranScore < raviScore && mehranScore > 0 {
//    print("\n:::::::::::::::::::\n: WINNER == MEHRAN")
//    print(": Mehran: ", mehranScore)
//    print(": Ravi: ", raviScore)
//    print(":::::::::::::::::::")
//}else if raviScore < mehranScore && raviScore > 0 {
//    print("\n:::::::::::::::::::\n: WINNER == RAVI")
//    print(": Mehran: ", mehranScore)
//    print(": Ravi: ", raviScore)
//    print(":::::::::::::::::::")
//}//else if raviScore < 0 && mehranScore < 0 {
//else{
//    print("\n:::::::::::::::::::\n: NO WINNER!!!")
//    print(": Mehran: ", mehranScore)
//    print(": Ravi: ", raviScore)
//    print(":::::::::::::::::::")
//}


import Darwin
var scoreBoard: [String : Int] = ["Mehran": 0, "Ravi": 0, "Jack": 0, "Hector": 0, "Asa": 0, "Thomas": 0, "Rejosh": 0, "Matt": 0]
func player1ScoreCard(player: String, sScore: Int) -> Int{
    var total = sScore
    var score = 0
    for i in 1...5{
        for i in 1...3{
            score = Int(arc4random_uniform(61))
            total -= score
        }
    }
    return total
}
for playerName in scoreBoard{
    let x = player1ScoreCard(player: playerName.key, sScore: 501)
    scoreBoard[playerName.key] = x
}
var myArr = Array(scoreBoard.values)
var sortedKeys = myArr.sorted()
for i in scoreBoard{
    print("\(i.key)\t\(i.value)")
}
print("\n======================\nSortedKeys:\t\t", sortedKeys)
var counter = 1
for xx in sortedKeys{
    let index = sortedKeys.index(of: Int(xx))
    if xx < 0 {
        sortedKeys.remove(at: index!)
    }
}
print("SortedKeys:\t\t", sortedKeys)
print("======================\nWinnerTable\t\tScore\n======================")
for xx in sortedKeys{
    for i in scoreBoard{
        let index = sortedKeys.index(of: Int(xx))
        if i.value == sortedKeys[index!]{
            print("#\(counter)\t\(i.key):\t\t", i.value)
        }
    }
counter += 1
}
//: [Previous](@previous)  |  page 12 of 13  |  [Next: Exercise: 501](@next)
