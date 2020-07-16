//
//  ScrollViewCard.swift
//  ExerciseSUI
//
//  Created by Muhammad Fawwaz Mayda on 16/07/20.
//  Copyright © 2020 Muhammad Fawwaz Mayda. All rights reserved.
//

import SwiftUI

struct ScrollViewCard: View {
    var person : Person
    var body: some View {
        ZStack {

            Image(person.imageNamed)
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 8.0, style: .continuous))
            VStack {
                Spacer()
                HStack {
                    Text("\(person.name)")
                    Spacer()
                }.background(Color.black.opacity(0.8))
                    .foregroundColor(Color.white)
            }
        }.frame(width: 240, height: 240)
    }
}

struct ScrollViewCard_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewCard(person: david )
    }
}
