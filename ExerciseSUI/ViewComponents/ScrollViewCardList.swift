//
//  ScrollViewCardList.swift
//  ExerciseSUI
//
//  Created by Muhammad Fawwaz Mayda on 16/07/20.
//  Copyright © 2020 Muhammad Fawwaz Mayda. All rights reserved.
//

import SwiftUI

struct ScrollViewCardList: View {
    var mentors: Mentor
    var body: some View {
        VStack(alignment: .leading) {
            
            
            Text(mentors.mentorType)
                .font(Font.system(size: 36, weight: .bold, design: .monospaced))
            
            
            ScrollView(.horizontal,showsIndicators: false) {
                HStack(spacing: 15.0){
                    ForEach(mentors.mentors ,id: \.id) { mentor in
                        ScrollViewCard(person: mentor)
                    }
                }
            }
        }
    }
}

struct ScrollViewCardList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewCardList(mentors: academyStore().dataMentor[0])
    }
}
