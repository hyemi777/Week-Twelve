//
//  modal.swift
//  week12
//
//  Created by Hyemi Byun on 4/8/21.
//

import SwiftUI

struct modal: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showAlert = false
    var candidate: candidateInfo
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(candidate.pic)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                Group {
                    Text(candidate.name)
                        .font(.largeTitle)
                        .foregroundColor(.black)
                }
                .padding(.bottom, 0)
                .padding(.horizontal)
                
                Text(candidate.info)
                    .font(.body)
                    .padding()
                    .lineLimit(1000)
                    .multilineTextAlignment(.leading)
            }
            
        }
        .overlay(
            HStack{
                Spacer()
                VStack{
                    Button(action: {
                        self.showAlert=true
                    }, label: {
                        Image(systemName:"chevron.down.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    })
                    .padding(.trailing,20)
                    .padding(.top, 40)
                    Spacer()
                }
                
            }
        )
        .alert(isPresented: $showAlert){
            Alert(title: Text("Reminder"), message: Text("Are you sure you are finished reading the article?"), primaryButton: .default(Text("Yes"), action:{self.presentationMode.wrappedValue.dismiss()}),secondaryButton: .cancel(Text("No"))
            )
        }
        .edgesIgnoringSafeArea(.top)
        
    }
}

struct modal_Previews: PreviewProvider {
    static var previews: some View {
        modal(candidate: candidates[0])
    }
}
