import UIKit

let favouriteShows = ["Company", "Anything Goes", "She Loves Me", "Company"]

let sentence = "I have \(favouriteShows.count) favourite shows"

let setOfFavouriteShows = Set(favouriteShows)

let newSentence = "I really have \(setOfFavouriteShows.count) favourite shows"
