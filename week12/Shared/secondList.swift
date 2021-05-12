//
//  secondList.swift
//  week12
//
//  Created by Hyemi Byun on 4/8/21.
//

import SwiftUI

struct secondList: View {
    @State var selectedCandidate: candidateInfo?
    var body: some View {
        NavigationView {
            List(candidates) { candidate in
                ArticleRow(candidate: candidate)
                    .onTapGesture {
                        self.selectedCandidate = candidate
                    }
            }
            .fullScreenCover(item: self.$selectedCandidate){ candidate in
                modal(candidate: candidate)
            }
            .navigationBarTitle("Candidate List")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct secondList_Previews: PreviewProvider {
    static var previews: some View {
        secondList()
    }
}

struct ArticleRow: View {
    var candidate: candidateInfo
    var body: some View {
        VStack(alignment: .leading) {
            Image(candidate.pic)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(5)
            
            Text(candidate.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .lineLimit(3)
                .padding(.bottom, 0)
            Text(candidate.info)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
        }
    }
}
