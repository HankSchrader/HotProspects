//
//  ContentView.swift
//  Shared
//
//  Created by Erik Mikac on 5/29/21.
//

import SwiftUI
import CoreData

class User: ObservableObject {
    @Published var name = "Taylor Swift."
}

struct DisplayView: View {
    @EnvironmentObject var user: User
    
    var body: some View {
        Text(user.name)
    }
}

struct EditView: View {
    @EnvironmentObject var user: User
    
    var body: some View {
        TextField("Name", text: $user.name)
    }
}
struct ContentView: View {
    let user = User()
    
    var body: some View {
        VStack {
            EditView().environmentObject(user)
            
            DisplayView()
                .environmentObject(user)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
