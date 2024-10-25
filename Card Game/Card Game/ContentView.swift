//
//  ContentView.swift
//  Card Game
//
//  Created by Frida Bailleres González on 17/10/24.
//

import SwiftUI

struct ContentView: View {
  
    @State var playerCard = "card2"
    @State var cpuCard = "card14"
    
    @State var playerScore = 0
    @State var cpuScore = 0
  
    var body: some View {
      ZStack{
        Image("background-plain")
        
        VStack{
          Spacer()
          Image("logo")
          Spacer()
          
          HStack{
            Image(playerCard)
              .padding(.horizontal) //You can sapace assets like this
            Image(cpuCard)
              .padding(.horizontal)
          }
          Spacer()
          Button {
            deal()
          } label: {
            Image("button")
          }

          .foregroundStyle(.white)
          Spacer()
          
          HStack{
            Spacer()
            VStack{
              Text("Player")
                .font(.headline)
                .padding(.bottom, 10.0)
              Text(String(playerScore))
                .font(.largeTitle)
            }
            Spacer() //Or Space assets like this
            
            VStack{
              Text("CPU")
                .font(.headline)
                .padding(.bottom, 10.0)
              Text(String(cpuScore))
                .font(.largeTitle)
            }
            Spacer()
          }
          .foregroundStyle(.white)
          Spacer()
        }

      }
      
    }
  
  func deal() {
    //Random player card
    let pCardValue = String(Int.random(in: 2...14))
    playerCard = "card" + pCardValue
    
    //Random CPU card
    let cpuCardValue = String(Int.random(in: 2...14))
    cpuCard = "card" + cpuCardValue
    
    //Scors update
    if pCardValue > cpuCardValue {
      playerScore += 1
    } else if pCardValue < cpuCardValue {
      cpuScore += 1
    }
  }
  
}

#Preview {
    ContentView()
}
