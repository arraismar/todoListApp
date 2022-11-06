//
//  ListRowView.swift
//  toDoList
//
//  Created by Marouan Arrais on 30/10/2022.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
                .foregroundColor(item.isCompleted ? .green : .accentColor)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 6)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "First item!", isCompleted: true)
    
    static var item2 = ItemModel(title: "Second item!", isCompleted: false)
    
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
