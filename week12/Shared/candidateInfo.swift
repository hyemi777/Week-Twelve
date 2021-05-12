//
//  candidateInfo.swift
//  week12
//
//  Created by Hyemi Byun on 4/8/21.
//

import Foundation
struct candidateInfo: Identifiable {
    var id = UUID()
    var name: String
    var pic: String
    var info: String
}

#if DEBUG

let candidates = [
    candidateInfo(name: "Jeb Bush", pic: "bush", info: "Supposedly, the smart Bush brother"),
    candidateInfo(name: "Ben Carson", pic: "carson", info: "Former Bran surgeon, or something like that"),
    candidateInfo(name: "Lincoln Chafee", pic: "chafee", info: "A senator from Rhode Island. Whatever!"),
    
    candidateInfo(name: "Chris Christie", pic: "christie", info: "Former Governor of New Jersey who seems kind of mean"),
    candidateInfo(name: "Hillary Clinton", pic: "clinton", info: "We all know who Hillary is"),
    candidateInfo(name: "Ted Cruz", pic: "cruz", info: "He looks way more honest with a beard. Almost lost a Texas senate ract to Beto"),
    candidateInfo(name: "Carly Fiorina", pic: "fiorina", info: "Former Tech executive who wanted to be president"),
    candidateInfo(name: "Jim Gilmore", pic: "gilmore", info: "American politician, diplomat and former attorney who was the 68th Governor of Virginia from 1998 to 2002 and Chairman of the Republican National Committee in 2001"),
    candidateInfo(name: "Lindsey Graham", pic: "graham", info: "A Republican senator from North Carolina who didn't like Trump until he became president."),
    candidateInfo(name: "Bobby Jindal", pic: "jindal", info: "Former Governor of Louisiana")
]
#endif
