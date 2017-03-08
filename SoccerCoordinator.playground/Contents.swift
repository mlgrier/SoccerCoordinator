//: Playground - noun: a place where people can play

import UIKit

/* Teams for the players */

var teamDragons = [[String: Any]]()
var teamSharks = [[String: Any]]()
var teamRaptors = [[String: Any]]()



// Array for letters that will be sent to the guardians of the children

var letters = [String]()


// Dictionaries to split experienced players from unexperienced players

var experiencedPlayers = [[String: Any]]()
var unexperiencedPlayers = [[String: Any]]()



/* Step 1: Creating a dictionary for each of players for their information (Name, Height/Inches, Soccer Experience, Parent's Names */


let joeSmith: [String: Any] = ["name": "Joe Smith", "height": 42, "experienced": true, "guardianNames": "Jim and Jan Smith"]
let jillTanner: [String: Any] = ["name": "Jill Tanner", "height": 36, "experienced": true, "guardianNames": "Clara Tanner"]
let billBon: [String: Any] = ["name": "Bill Bon", "height": 43, "experienced": true, "guardianNames": "Sara and Jenny Bon"]
let evaGordon: [String: Any] = ["name": "Eva Gordon", "height": 45, "experienced": false, "guardianNames": "Wendy and Mike Gordon"]
let mattGill: [String: Any] = ["name": "Matt Gill", "height": 40, "experienced": false, "guardianNames": "Charles and Sylvia Gill"]
let kimmyStein: [String: Any] = ["name": "Kimmy Stein", "height": 41, "experienced": false, "guardianNames": "Bill and Hillary Stein"]
let sammyAdams: [String: Any] = ["name": "Sammy adams", "height": 45, "experienced": false, "guardianNames": "Jeff Adams"]
let karlSaygan: [String: Any] = ["name": "Karl Saygan", "height": 42, "experienced": true, "guardianNames": "Heather Bledsoe"]
let suzaneGreenberg: [String: Any] = ["name": "Suzane Greenberg", "height": 44, "experienced": true, "guardianNames": "Henrietta Dumas"]
let salDali: [String: Any] = ["name": "Sal Dali", "height": 40, "experienced": false, "guardianNames": "Gala Dali"]
let joeKavalier: [String: Any] = ["name": "Joe Kavalier", "height": 39, "experienced": false, "guardianNames": "Sam and Elaine Kavalier"]
let benFinkelstein: [String: Any] = ["name": "Ben Finkelstein", "height": 45, "experienced": false, "guardianNames": "Aaron and Jill Finkelstein"]
let diegoSoto: [String: Any] = ["name": "Diego Soto", "height": 41, "experienced": true, "guardianNames": "Robin and Sarika Soto"]
let chloeAlaska: [String: Any] = ["name": "Chloe Alaska", "height": 47, "experienced": false, "guardianNames": "David and Jamie Alaska"]
let arnoldWillis: [String: Any] = ["name": "Arnold Willis", "height": 43, "experienced": false, "guardianNames": "Claire Willis"]
let phillipHelm: [String: Any] = ["name": "Phillip Helm", "height": 44, "experienced": true, "guardianNames": "Thomas Helm and Eva Jones"]
let lesClay: [String: Any] = ["name": "Les Clay", "height": 42, "experienced": true, "guardianNames": "Wynonna Brown"]
let herschelKrustofski: [String: Any] = ["name": "Herschel Krustofski", "height": 45, "experienced": true, "guardianNames": "Hyman and Rachel Krustofski"]




/* Taking all of the individual player dictionaries and combining them into one to being sorting the players */

 let players = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams,karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]


// Code for sorting the experienced from the unexperienced players

for player in players {
    if player["experienced"] as! Bool == true {
        experiencedPlayers.append(player)
    } else {
        unexperiencedPlayers.append(player)
    }
}

// Code to evenly assign experienced players to teams

let numberOfExperiencedPlayer = 3


for playersWithExperience in experiencedPlayers {
    if numberOfExperiencedPlayer > teamDragons.count {
        teamDragons.append(playersWithExperience)
    } else if numberOfExperiencedPlayer > teamSharks.count {
        teamSharks.append(playersWithExperience)
    } else if numberOfExperiencedPlayer > teamRaptors.count {
        teamRaptors.append(playersWithExperience)
    }

}

// Code to evenly assign unexperienced players to teams

let averageTeamsPlayers = 6


for playersWithoutExperience in unexperiencedPlayers {
    if averageTeamsPlayers > teamRaptors.count {
        teamRaptors.append(playersWithoutExperience)
    } else if averageTeamsPlayers > teamDragons.count {
        teamDragons.append(playersWithoutExperience)
    } else if averageTeamsPlayers > teamSharks.count {
        teamSharks.append(playersWithoutExperience)
    }
}

// Code to iterate through TEAMRAPTORS and write a letter to each guardian and child. / Add letter to the LETTERS array

for teamRaptorsLetter in teamRaptors {
    letters.append("We are happy to let you know that your child \(teamRaptorsLetter["name"]!) is now a member of The Raptors! Coach Ham will be holding the first team practice March 18 @ 1PM, so \(teamRaptorsLetter["guardianNames"]!) thank you for letting you child join us this season.")
    
    print(letters)
    
}

// Code to iterate through TEAMDRAGON and write a letter to each guardian and child. / Add letter to the LETTERS array

for teamDragonsLetter in teamDragons {
    letters.append("We are happy to let you know that your child \(teamDragonsLetter["name"]!) is now a member of The Raptors! Coach Cake will be holding the first team practice March 17 @ 1PM, so \(teamDragonsLetter["guardianNames"]!) thank you for letting you child join us this season.")
    
    print(letters)
    
}

// Code to iterate through TEAMSHARKS and write a letter to each guardian and child. / Add letter to the LETTERS array

for teamSharksLetter in teamSharks {
    letters.append("We are happy to let you know that your child \(teamSharksLetter["name"]!) is now a member of The Raptors! Coach Taco will be holding the first team practice March 18 @ 1PM, so \(teamSharksLetter["guardianNames"]!) thank you for letting you child join us this season.")
    
    print(letters)
    
}

