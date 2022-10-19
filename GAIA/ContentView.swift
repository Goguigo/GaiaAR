//
//  ContentView.swift
//  GAIA
//
//  Created by Rodrigo Pellanda on 16/03/22.
//

import SwiftUI
import RealityKit
import MessageUI
import CoreData
import PencilKit

class ViewRouter: ObservableObject {
    init() {
        if !UserDefaults.standard.bool(forKey: "didLaunchBefore") {
            UserDefaults.standard.set(true, forKey: "didLaunchBefore")
            currentPage = "onboardingView"
        } else {
            currentPage = "homeView"
        }
    }
    
    @Published var currentPage: String
    
}

struct ContentView : View {
    
    @StateObject private var vm = CloudKitCrudBootcampViewModel()
    let persistenceController = PersistenceController.shared
    @EnvironmentObject var list: Potato
    @EnvironmentObject var viewRouter: ViewRouter 
    var body: some View {
        VStack {
            if viewRouter.currentPage == "onboardingView" {
                IntroductionView()
            } else if viewRouter.currentPage == "homeView" {
                SceneView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
        }
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Potato())
            .environmentObject(ViewRouter())
        
    }
}
#endif
