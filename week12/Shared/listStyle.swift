//
//  listStyle.swift
//  week12
//
//  Created by Hyemi Byun on 4/7/21.
//

import SwiftUI

struct listStyle: View {
    init(){
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor:UIColor.systemGray5, .font:UIFont(name: "ArialRoundedMTBold", size: 30)!]
        
        navBarAppearance.titleTextAttributes = [.foregroundColor:UIColor.systemGray,.font: UIFont(name: "ArialRoundedMTBold", size: 15)!]
        
        navBarAppearance.setBackIndicatorImage(UIImage(systemName: "chevron.backward"), transitionMaskImage: UIImage(systemName: "chevron.backward"))
        
        UINavigationBar.appearance().standardAppearance=navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance=navBarAppearance
        UINavigationBar.appearance().compactAppearance=navBarAppearance
        UINavigationBar.appearance().tintColor = .black
    }
    @Environment(\.presentationMode) var mode
    var body: some View {
        
        NavigationView {
            ExtractedView()
        }
        .navigationBarTitle("Type of Stitches", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {
            self.mode.wrappedValue.dismiss()
        }){
            Text("\(Image(systemName: "checkmark.circle")) Return")
                .foregroundColor(.black)
        })
        
    }
}

struct increase: View {
    @Binding var Numb: Int
    var body: some View {
        Button (action: {
            self.Numb += 1
        }) {
            Text("Increase")
                .font(Font.custom("Times New Roman", size: 30))
                .foregroundColor(.black)
                .padding(.leading)
                    
        }
        
    }
}
struct decrease: View {
    @Binding var Numb: Int
    var body: some View {
        Button (action: {
            self.Numb -= 1
        }) {
        
                Text("Decrease   \(self.Numb)")
                    .font(Font.custom("Times New Roman", size: 30))
                    .foregroundColor(.black)
        }
        
    }
}
struct reset: View {
    @Binding var Numb: Int
    var body: some View {
        Button (action: {
            self.Numb = 0
        }) {
        
            Text("Reset")
                .font(Font.custom("Times New Roman", size: 30))
                .foregroundColor(.black)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.purple, lineWidth: 5)
                )
        }
        
        
    }
}

struct textView: View {
    var body: some View {
        Text("Number of stitches:")
            .font(Font.custom("Times New Roman", size: 35))
            .foregroundColor(.black)
    }
}

struct ExtractedView: View {
    @State var Numb = 0
    let crochetType = ["Single Crochet", "Double Crochet", "Slip Stitch Crochet","Treble Crochet Stitch", "Half Double Crochet"]
    let crochetPic = ["singleStitch", "doubleStitch", "slipStitch", "trebleStitch", "halfDoubleStitch"]
    var body: some View {
        List(0..<crochetType.count) { item in
            NavigationLink(destination: VStack {
                VStack {
                    Text(self.crochetType[item])
                        .font(Font.custom("Times New Roman", size: 50))
                    VStack{
                        Image(self.crochetPic[item])
                            .resizable()
                            .frame(width: 200, height: 200)
                            .padding(.bottom, 50)
                        textView()
                        HStack{
                            week12.decrease(Numb: $Numb)
                            week12.increase(Numb: $Numb)
                            
                        }
                        week12.reset(Numb: $Numb)
                        
                    }
                }
            }
            ){
                HStack (alignment: .center){
                    Text(self.crochetType[item])
                        .font(.body)
                    Spacer()
                    Image(self.crochetPic[item])
                        .resizable()
                        
                        .frame(width: 200, height: 150)
                        .aspectRatio(contentMode: .fit)
                        .clipped()
                    
                    
                }
            }
        }
        
        
        
 
    }
}


struct listStyle_Previews: PreviewProvider {
    static var previews: some View {
        listStyle()
    }
}
