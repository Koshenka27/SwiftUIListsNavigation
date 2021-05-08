//
//  ContentView.swift
//  listsAndNavDemo
//
//  Created by Logan Koshenka on 5/7/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(animals) { animal in
                NavigationLink(destination: DetailView(animal: animal)) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("\(animal.title)")
                                .font(.system(size: 18, weight: .bold))
                            
                            Text("\(animal.subtitle)")
                        }
                        Spacer()
                        
                        Image(animal.image)
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    }
                }
            }
            .navigationBarTitle("Animals")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListItem: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: String
}

var animals = [
    ListItem(title: "Dolphins", subtitle: "Look how cool they are swimming", image: "dolphins"),
    ListItem(title: "Monkeys", subtitle: "I wonder if this is in Bali", image: "monkeys"),
    ListItem(title: "Sea Turtle", subtitle: "This was my favorite image chosen!", image: "turtle"),
    ListItem(title: "Cool Looking Goat", subtitle: "Check out his horns", image: "goat"),
    ListItem(title: "Cute Mouse", subtitle: "Why does everyone hate mice lol", image: "mouse"),
    ListItem(title: "Parrot", subtitle: "Birds are rad", image: "bird"),
    ListItem(title: "Koala", subtitle: "Koalas look deceptively friendly...", image: "koala"),
    ListItem(title: "Deer", subtitle: "What a view!", image: "deer"),
    ListItem(title: "Wildebeest", subtitle: "I know how this story ends", image: "wildebeest")
]
