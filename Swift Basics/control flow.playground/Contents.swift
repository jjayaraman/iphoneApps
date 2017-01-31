//: Playground - noun: a place where people can play

import UIKit


// If / else
var age = 23
if age == 23 {
    print("true age is 23")
} else {
    print("false")
}

//for loop
for  index in 1...3 {
    print("index : \(index)")
}

var cards = ["card2", "card3"]
for card  in cards {
    print(card)
}

//while
var count = 0
while (count < 3) {
    print("count : \(count)")
    count += 1
}

//do while
var score = 1
repeat {
    print("score : \(score)")
    score += 1
} while score < 5