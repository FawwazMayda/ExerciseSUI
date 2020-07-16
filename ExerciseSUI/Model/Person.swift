//
//  Person.swift
//  ExerciseSUI
//
//  Created by Muhammad Fawwaz Mayda on 16/07/20.
//  Copyright © 2020 Muhammad Fawwaz Mayda. All rights reserved.
//

import UIKit

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let imageNamed: String
    
    init(name: String, imageNamed: String) {
        self.name = name
        self.imageNamed = imageNamed
    }
}

struct Mentor: Identifiable {
    let id = UUID()
    let mentorType: String
    var mentors: [Person] = [Person]()
    init(mentorType: String) {
        self.mentorType = mentorType
    }
}

class academyStore: ObservableObject {
    @Published var dataMentor = [Mentor]()
    init() {
        let david = Person(name: "DavidGun", imageNamed: "david")
        let thoya = Person(name: "thoya", imageNamed: "thoya")
        let handy = Person(name: "handy", imageNamed: "handy")
        var techMentor = Mentor(mentorType: "Tech")
        techMentor.mentors.append(david)
        techMentor.mentors.append(thoya)
        techMentor.mentors.append(handy)
        dataMentor.append(techMentor)
        
        let phil = Person(name: "Phil", imageNamed: "phil")
        let desi = Person(name: "desi", imageNamed: "desi")
        let george = Person(name: "george", imageNamed: "george")
        var designMentor = Mentor(mentorType: "Design")
        designMentor.mentors.append(phil)
        designMentor.mentors.append(desi)
        designMentor.mentors.append(george)
        dataMentor.append(designMentor)
        
        let made = Person(name: "made", imageNamed: "made")
        var ts = Mentor(mentorType: "Techincal")

        ts.mentors.append(made)
        dataMentor.append(ts)
        
        dataMentor = dataMentor.shuffled()
    }
}


let david = Person(name: "DavidGun", imageNamed: "david")
