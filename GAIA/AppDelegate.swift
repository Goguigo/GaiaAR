//  Created by Rodrigo Pellanda on 11/06/22.
//

import SwiftUI

@main
struct aApp: App {
    let persistenceController = PersistenceController.shared
    @EnvironmentObject var list: Potato
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Potato())
                .environmentObject(ViewRouter())
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .onOpenURL { url in
                    print("Ok")
                }
                
        }
    }
}
