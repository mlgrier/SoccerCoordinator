//: Playground - noun: a place where people can play

import UIKit

/* Teams for the players */

var teamDragons = [[String: Any]]()
var teamSharks = [[String: Any]]()
var teamRaptors = [[String: Any]]()


// Empty dictionaries to split players

var experiencedPlayers = [[String: Any]]()
var unexperiencedPlayers = [[String: Any]]()


let numberOfExperiencedPlayer = 3
let averageTeamsPlayers = 3


/* Step 1: Creating a dictionary of all player information (Name, Height/Inches, Soccer Experience, Parent's Names */


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




/* Logic to iterate through players and assign to teams. DRAGONS SHARKS RAPTORS */

 let playerRoster = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams,karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]



for player in playerRoster {
    if player["experienced"] as! Bool == true {
        experiencedPlayers.append(player)
    } else {
        unexperiencedPlayers.append(player)
    }
}

for playersWithExperience in experiencedPlayers {
    if numberOfExperiencedPlayer > teamDragons.count {
        teamDragons.append(playersWithExperience)
    } else if numberOfExperiencedPlayer > teamSharks.count {
        teamSharks.append(playersWithExperience)
    } else if numberOfExperiencedPlayer > teamRaptors.count {
        teamRaptors.append(playersWithExperience)
    }

}

for playersWithoutExperience in unexperiencedPlayers {
    if averageTeamsPlayers > teamRaptors.count {
        teamRaptors.append(playersWithoutExperience)
    } else if averageTeamsPlayers > teamDragons.count {
        teamDragons.append(playersWithoutExperience)
    } else if averageTeamsPlayers > teamSharks.count {
        teamSharks.append(playersWithoutExperience)
    }
}



experiencedPlayers.count
unexperiencedPlayers.count

teamSharks.count
teamDragons.count
teamRaptors.count


