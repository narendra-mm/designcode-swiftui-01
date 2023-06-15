//
//  ContentView.swift
//  designcode-swiftui-01
//
//  Created by Narendra Yenugula on 15/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //In SwiftUI the order of elements are last one shows in the front
            //background
            BackCardView()
                .offset(x: 0, y: -40)
                .scaleEffect(0.9)
                .rotationEffect(Angle.degrees(10))
                .rotation3DEffect(Angle(degrees: 10), axis: (x: 1, y: 0, z: 0))
            
            BackCardView()
                .offset(x: 0, y: -20)
                .scaleEffect(0.95)
                .rotationEffect(Angle.degrees(5))
                .rotation3DEffect(Angle(degrees: 5), axis: (x: 1, y: 0, z: 0))
            
            //card
            CardView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("UI Design ")
                        .font(Font.title)
                        .fontWeight(Font.Weight.semibold)
                        .foregroundColor(Color.white)
                    Text("Certificate")
                        .foregroundColor(Color("accent"))
                }
                Spacer()
                Image("Logo1")
            }
            .padding(Edge.Set.horizontal, 20)
            .padding(Edge.Set.top, 20)
            Spacer()
            Image("Card1")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .frame(width: 300, height: 110, alignment: Alignment.top)
        }
        .frame(width: 340, height: 220)
        .background(Color.black)
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}

struct BackCardView: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(width: 340, height: 220)
        .background(Color.blue )
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}
