//
//  ContentView.swift
//  Shared
//
//  Created by Hyemi Byun on 4/7/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView(){
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .overlay(
                    VStack(alignment: .center){
                        Text("Week 12 Lists")
                            .font(Font.custom("Zapfino", size: 30))
                                StitchStyles()
                                modalView()
                    }
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct homeButtons: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
    configuration.label
        .padding()
        .frame(maxWidth: .infinity)
        .border(Color.black)
        .padding()
    }
}

struct StitchStyles: View {
    var body: some View {
        NavigationLink(destination: week12.listStyle()){
            Text("Stitch Styles")
                .font(Font.custom("Times New Roman", size: 30))
                .padding()
                .foregroundColor(.black)
        }
        .buttonStyle(homeButtons())
    }
}

struct modalView: View {
    var body: some View {
        NavigationLink(destination: secondList()){
            Text("Candidates")
                .font(Font.custom("Times New Roman", size: 30))
                .padding()
                .foregroundColor(.black)
        }
        .buttonStyle(homeButtons())
    }
}
