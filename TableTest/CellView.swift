//
//  ContentView.swift
//  TableTest
//
//  Created by Zev Eisenberg on 1/16/20.
//  Copyright © 2020 Zev Eisenberg. All rights reserved.
//

import SwiftUI

struct Person: Identifiable {
    let id: UUID = UUID()
    let name: String
    let state: String
    let image: UIImage
}

struct CellView: View {

    @State var person: Person

    var body: some View {

        HStack {
            Image(uiImage: person.image).renderingMode(.template)
            VStack(alignment: .leading) {
                Text(person.name)
                    .font(.headline)
                Text(person.state)
            }

        }.background(Color.init(.systemBackground))
    }

}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CellView(person: Person(name: "Zev", state: "happy", image: UIImage(systemName: "tray")!))
            CellView(person: Person(name: "Zev", state: "happy", image: UIImage(systemName: "tray")!))
                .environment(\.colorScheme, .dark)
        }
        .previewLayout(.sizeThatFits)
    }
}
