import Foundation

var userIsNew: Bool? = true
var userDidCompleteOnBoarding: Bool? = false
var userFavouriteMoive: String? = "nil"


// Using if-let
func checkIfUserIsSetup() -> Bool{
    if let isNew = userIsNew, let didCompleteOnBoarding = userDidCompleteOnBoarding, let favouriteMovie = userFavouriteMoive {
        // userIsNew == Bool AND
        // userDidCompleteOnBoarding == Bool AND
        // userFavouriteMovie == String
        return getUserStatus(
            userIsNew: isNew,
            userDidCompleteOnBoarding: didCompleteOnBoarding,
            userFavouriteMoive: favouriteMovie
        )
    }
    // userIsNew == Bool OR
    // userDidCompleteOnBoarding == Bool OR
    // userFavouriteMovie == String
    return false
}

func getUserStatus(userIsNew: Bool, userDidCompleteOnBoarding: Bool, userFavouriteMoive: String) -> Bool{
    if(userIsNew && userDidCompleteOnBoarding){
        return true
    }
    return false
}

print(checkIfUserIsSetup())

// using guard
func checkIfUserIsSetup2() -> Bool{
    guard let isNew = userIsNew, let didCompleteOnBoarding = userDidCompleteOnBoarding, let favouriteMovie = userFavouriteMoive else {
        return false;
    }
    return getUserStatus2(
        userIsNew: isNew,
        userDidCompleteOnBoarding: didCompleteOnBoarding,
        userFavouriteMoive: favouriteMovie
    )
}

func getUserStatus2(userIsNew: Bool, userDidCompleteOnBoarding: Bool, userFavouriteMoive: String) -> Bool {
    guard userIsNew && userDidCompleteOnBoarding else {
        return false
    }

    return true
}

print(checkIfUserIsSetup2())

// Optional chaining

func getUsername() -> String? {
    return nil
}

func getTitle() -> String {
    return "title"
}

func getUserData(){
    let username: String? = getUsername()
    let count: Int? = username?.count
    // print(count)

    let title: String = getTitle()
    let count2 = title.count
    print(count2)

    // let firstCharcterOfUsername = username?.first?.isLowercase ?? false
    // print(firstCharcterOfUsername)

    let count3: Int = username!.count
    print(count3)
}

getUserData()
