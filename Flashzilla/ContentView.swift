//
//  ContentView.swift
//  Flashzilla
//
//  Created by Aimee Temple on 2024-07-25.
//

import SwiftUI

extension View {
    func stacked(at position: Int, in total: Int) -> some View {
        let offset = Double(total - position)
        return self.offset(y: offset * 10)
    }
}

struct ContentView: View {
    
    
    @State private var cards = Array<Card>(repeating: .example, count: 10)
    
    
    var body: some View {
        //background image:
        ZStack {
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            //timer over card:
            VStack {
                
            //card:
                ZStack {
                    ForEach(0..<cards.count, id: \.self) { index in
                        CardView(card: cards[index]) {
                            withAnimation {
                                removeCard(at: index)
                            }
                        }
                            .stacked(at: index, in: cards.count)
                        
                    }
                }
            }
        }
    }
    
    func removeCard(at index: Int) {
        cards.remove(at: index)
    }
}

#Preview {
    ContentView()
}
