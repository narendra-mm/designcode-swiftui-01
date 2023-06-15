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
            //background
            BackCardView()
                .offset(x: 0, y: -40)
            BackCardView()
                .offset(x: 0, y: -20)
            
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
        .frame(width: 300, height: 220)
        .background(Color.blue )
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}
