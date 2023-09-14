//
//  HorizontalGridView.swift
//  Grid
//
//  Created by Alexey Turulin on 9/14/23.
//

import SwiftUI

struct HorizontalGridView: View {
    private let dataSet = (1...50)
    private let rows = [ GridItem() ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, spacing: 20) {
                ForEach(dataSet, id: \.self) { item in
                    Image(systemName: item.formatted() + ".circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
            }
        }
    }
}

struct HorizontalGridView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalGridView()
    }
}
