import Foundation

var username: String = "Ashutosh"
var isUserPrem: Bool = false
var isUserNew: Bool = false

func getUsername() -> String {
    return username
}

func getPremimumStatus() -> Bool {
    return isUserPrem
}

// Tuple can combine multiple piece of data
func getUserData() -> (String, Bool) {
    let name = getUsername()
    let isPremium = getPremimumStatus()

    return (name, isPremium)
}

var userData1: String = username
var userData2 = (username, isUserPrem, isUserNew)
let name: Bool = userData2.2

print(name)

func getUserData() -> (name: String, isPrem: Bool) {
    let name = getUsername()
    let isPremium = getPremimumStatus()

    return (name, isPremium)
}

let userData3 = getUserData2()
let data = userData3.name

print(data)

// Passing tuple as parameter
func doSomehting(info: (name: String, isPrem: Bool)){

}

let info = getUserData2()
doSomehting(info: info)
