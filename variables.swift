import Foundation

var userIsNew: Bool? = true
var userDidCompleteOnBoarding: Bool = false
var userFavouriteMoive: String? = nil

func userStatus(userIsNew: Bool, userDidCompleteOnBoarding: Bool) -> Bool{
    if(userIsNew && userDidCompleteOnBoarding) {
        return true
    }

    return false
}

let status = userStatus(userIsNew: userIsNew ?? false, userDidCompleteOnBoarding: userDidCompleteOnBoarding ?? false)

print(status)

