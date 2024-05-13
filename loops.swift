import Foundation

// for loop
var playersTeam = ["ronaldo", "messi", "dhoni", "sharma", "virat"]

for player in playersTeam {
    print(player)
}

for player in playersTeam where player == "dhoni"{
    print(player)
}

// for using range
for i in 1...5 {  // starts from 1 and includes 5
    print(i)
}

for i in 1..<5 { // starts from 1 and excludes 5
    print(i)
}

// Que. Create array of random numbers of 24 integers
var arr: [Int] = []

for _ in 1..<24 {
    let randomNumber = Int.random(in: 0...100)
    arr.append(randomNumber)
}
print(arr)