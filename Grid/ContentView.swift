//
//  ContentView.swift
//  Grid
//
//  Created by Alexey Turulin on 9/14/23.
//

import SwiftUI

struct ContentView: View {
    private let circle = ".circle"
    
    var body: some View {
        NavigationStack {
            TabView {
                CustomGridView(items: Array(1...50), columns: 3) { item in
                    Image(systemName: item.formatted() + circle)
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                .tabItem {
                    Image(systemName: "hand.point.up.left.fill")
                    Text("Custom Grid")
                }
                
                VerticalGridView()
                    .tabItem {
                        Image(systemName: "hand.point.down")
                        Text("Vertical Grid")
                    }
                
                HorizontalGridView()
                    .tabItem {
                        Image(systemName: "hand.point.right.fill")
                        Text("Horizontal Grid")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
