//
//  ListView.swift
//  TableTest
//
//  Created by Zev Eisenberg on 1/16/20.
//  Copyright © 2020 Zev Eisenberg. All rights reserved.
//

import SwiftUI

let people: [Person] = [Person(name: "zev", state: "happy", image: UIImage(systemName: "tray")!), Person(name: "zev", state: "happy", image: UIImage(systemName: "tray")!), Person(name: "zev", state: "happy", image: UIImage(systemName: "tray")!), Person(name: "zev", state: "happy", image: UIImage(systemName: "tray")!), Person(name: "zev", state: "happy", image: UIImage(systemName: "tray")!), Person(name: "zev", state: "happy", image: UIImage(systemName: "tray")!), Person(name: "zev", state: "happy", image: UIImage(systemName: "tray")!), Person(name: "zev", state: "happy", image: UIImage(systemName: "tray")!), Person(name: "zev", state: "happy", image: UIImage(systemName: "tray")!), Person(name: "zev", state: "happy", image: UIImage(systemName: "tray")!), Person(name: "zev", state: "happy", image: UIImage(systemName: "tray")!)]

struct ListView: View {
    var body: some View {
        NavigationView {
            List(people) { (person) in
                CellView(person: person)
            }
        }
        .navigationBarTitle("zevs")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
