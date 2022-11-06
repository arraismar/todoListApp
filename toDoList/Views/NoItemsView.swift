//
//  NoItemsView.swift
//  toDoList
//
//  Created by Marouan Arrais on 01/11/2022.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("No items")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("I think you should click the add button and add a bunch of items to your todo list!")
                NavigationLink(
                    destination: AddView(),
                    label: {
                        Text("Add")
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(height: 55)
                            .frame(maxWidth: 120)
                            .background(animate ? Color.red : Color.accentColor)
                            .cornerRadius(10)
                    })
//                .padding(.horizontal, animate ? 30 : 50)
//                .scaleEffect(animate ? 1.1 : 1.0)
//                .offset(y: animate ? -7 : 0)
            }
            .frame(maxWidth: 400)
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation() {
        guard !animate else {return}
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 4.0)
//                    .repeatForever()
            
            ) {
                animate.toggle()
            }
        }
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NoItemsView()
                .navigationTitle("Title")
        }
    }
}
