//
//  ContentView.swift
//  IntroApp
//

import SwiftUI

/*
struct HomeView: View {
    let foregroundColor: Color = .blue
    let detailForegroundColor: Color = .orange
    
    let items: [String] = [
        "Mike",
        "Claire",
        "Frank"
    ]
    
    var body: some View {
        List(items, id: \.self) { item in
            HStack {
                Text("Hello ")
                    .foregroundColor(foregroundColor)
                    .background(Color.orange)
                Text(item)
                    .foregroundColor(detailForegroundColor)
                Text("!")
                    .foregroundColor(foregroundColor)
                
            }
        }
        
    }
}
*/

// preview for right side
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

struct EMNDesignSystem {
    static let pillImage = Image(systemName: "plus.circle.fill")
    static let paddingEdges: Edge.Set = [.leading]
    static let leadingSpacing: CGFloat = 24
}

struct ListView: View {
    var body: some View {
        ListCellView()
    }
}

struct ListCellView: View {
    @State var items: [String] = ["Sergio", "Gio", "Mike"]
    
    var body: some View {
        List(items, id: \.self) { item in
            HStack {
                Text(item)
                    .padding(
                        EMNDesignSystem.paddingEdges,
                        EMNDesignSystem.leadingSpacing
                    )
                Spacer()
                EMNDesignSystem.pillImage
            }
        }
    }
}
