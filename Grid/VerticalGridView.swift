//
//  VerticalGridView.swift
//  Grid
//
//  Created by Alexey Turulin on 9/14/23.
//

import SwiftUI

struct VerticalGridView: View {
    private let dataSet = (1...50)
    private let columns = [
        // Шаблон ячеек сетки
        // Сколько ячеек шириной 80 поместится на экран, столько и отобразится
        GridItem(.adaptive(minimum: 80)),
        // .flexible - один столбец шириной с самый большой элемент
        // Можно добавлять несколько столбцов
//        GridItem(.flexible()),
//        GridItem(.flexible()),
        // Можно создать фиксированный столбец
//        GridItem(.fixed(70))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(dataSet, id: \.self) { item in
                    Image(systemName: item.formatted() + ".circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
            }
        }
    }
}

struct VerticalGridView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalGridView()
    }
}
