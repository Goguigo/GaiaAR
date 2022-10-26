//
//  Principal.swift
//  GAIA
//
//  Created by Rodrigo Pellanda on 17/03/22.
//

import SwiftUI
import RealityKit
import UIKit
import AVFoundation
import MessageUI
import Combine
import CoreData
import PencilKit

class Potato: ObservableObject {
    @Published var isCatalyst = false
    @Published var lista: Int = 0
    @Published var grid: Int = 0
    let flipTriggerSignal = PassthroughSubject<Void, Never>()
    @Published var fontSize: CGFloat = 13
    let action2 = PassthroughSubject<Void, Never>()
    let action3 = PassthroughSubject<Void, Never>()
    let action4 = PassthroughSubject<Void, Never>()
    let action5 = PassthroughSubject<Void, Never>()
    let action6 = PassthroughSubject<Void, Never>()
    let action7 = PassthroughSubject<Void, Never>()
    let action8 = PassthroughSubject<Void, Never>()
    let action9 = PassthroughSubject<Void, Never>()
    let action10 = PassthroughSubject<Void, Never>()
    let action11 = PassthroughSubject<Void, Never>()
}



struct SceneView: View {
    @StateObject private var vm = CloudKitCrudBootcampViewModel()
    @EnvironmentObject var list: Potato
     @State var isHidden: Bool = true
     @State var isActive: Bool = false
    @State var propId: Int = 0
    @State var speed: Double = 600
    let persistenceController = PersistenceController.shared
    var body: some View {
        if self.list.lista == 0 {
            NewHomeView()
        }
        if self.list.lista == 1 {
            ZStack {
                ARViewContainer(model: list)
                HStack {
                    Button(action: {
                        self.list.lista = 0
                    }) {
                        Image(systemName: "return")
                    }
                    .buttonBorderShape(.roundedRectangle)
                    .buttonStyle(.bordered)
                    .font(.largeTitle)
                    .frame(maxHeight: .infinity, alignment: .bottomTrailing)
                    Spacer()
                    VStack {
                        Spacer()
                        Button(action: {
                            self.list.action7.send()
                        }) {
                            Image(systemName: "restart.circle")
                        }
                        .buttonBorderShape(.roundedRectangle)
                        .buttonStyle(.bordered)
                        .font(.largeTitle)
                    }
                }
                .padding()
            }
            .edgesIgnoringSafeArea(.all)
        } else {
            if self.list.lista == 10 {
                CanvasView()
            } else {
                if self.list.lista == 11 {
                    TextEditorView()
                }
            }
        }
        if self.list.lista == 3 {
            ZStack {
                ARViewContainer3(model: list)
                VStack {
                    Spacer()
                    HStack {
                        Button(action: {
                            self.list.lista = 0
                        }) {
                            Image(systemName: "return")
                        }
                        .buttonBorderShape(.roundedRectangle)
                        .buttonStyle(.bordered)
                        .font(.largeTitle)
                        .frame(maxHeight: .infinity, alignment: .bottomTrailing)
                        Spacer()
                        VStack {
                            Spacer()
                            Button(action: {
                                if isHidden == true {
                                    self.list.action5.send()
                                    isHidden = false
                                } else {
                                    if isHidden == false {
                                        self.list.action6.send()
                                        isHidden = true
                                    }
                                }
                            }) {
                                Image(systemName: "moon.stars")
                            }
                            .buttonBorderShape(.roundedRectangle)
                            .buttonStyle(.bordered)
                            .font(.largeTitle)
                        }
                    }
                    .padding()
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
        if self.list.lista == 4 {
            ZStack {
                ARViewContainer4(model: list)
                HStack {
                    Button(action: {
                        self.list.lista = 0
                    }) {
                        Image(systemName: "return")
                    }
                    .buttonBorderShape(.roundedRectangle)
                    .buttonStyle(.bordered)
                    .font(.largeTitle)
                    .frame(maxHeight: .infinity, alignment: .bottomTrailing)
                    Spacer()
                }
                .padding()
            }
            .edgesIgnoringSafeArea(.all)
        }
        if self.list.lista == 5 {
            ZStack {
                ARViewContainer9()
                HStack {
                    Button(action: {
                        self.list.lista = 0
                    }) {
                        Image(systemName: "return")
                    }
                    .buttonBorderShape(.roundedRectangle)
                    .buttonStyle(.bordered)
                    .font(.largeTitle)
                    .frame(maxHeight: .infinity, alignment: .bottomTrailing)
                    Spacer()
                }
                .padding()
            }
            .edgesIgnoringSafeArea(.all)
        }
        if self.list.lista == 6 {
            ZStack {
                ARViewContainer5()
                HStack {
                    Button(action: {
                        self.list.lista = 0
                    }) {
                        Image(systemName: "return")
                    }
                    .buttonBorderShape(.roundedRectangle)
                    .buttonStyle(.bordered)
                    .font(.largeTitle)
                    .frame(maxHeight: .infinity, alignment: .bottomTrailing)
                    Spacer()
                }
                .padding()
            }
            .edgesIgnoringSafeArea(.all)
        }
        if self.list.lista == 9 {
            ZStack {
                ARViewContainer8()
                HStack {
                    Button(action: {
                        self.list.lista = 0
                    }) {
                        Image(systemName: "return")
                    }
                    .buttonBorderShape(.roundedRectangle)
                    .buttonStyle(.bordered)
                    .font(.largeTitle)
                    .frame(maxHeight: .infinity, alignment: .bottomTrailing)
                    Spacer()
                }
                .padding()
            }
            .edgesIgnoringSafeArea(.all)
        } else {
            if self.list.lista == 12 {
                ZStack {
                    ARViewContainer10()
                    HStack {
                        Button(action: {
                            self.list.lista = 0
                        }) {
                            Image(systemName: "return")
                        }
                        .buttonBorderShape(.roundedRectangle)
                        .buttonStyle(.bordered)
                        .font(.largeTitle)
                        .frame(maxHeight: .infinity, alignment: .bottomTrailing)
                        Spacer()
                    }
                    .padding()
                }
                .edgesIgnoringSafeArea(.all)
            } else {
                if self.list.lista == 13 {
                    ZStack {
                        ARViewContainer11(model: list)
                        HStack {
                            Button(action: {
                                self.list.lista = 0
                            }) {
                                Image(systemName: "return")
                            }
                            .buttonBorderShape(.roundedRectangle)
                            .buttonStyle(.bordered)
                            .font(.largeTitle)
                            .frame(maxHeight: .infinity, alignment: .bottomTrailing)
                            Spacer()
                            VStack {
                                Spacer()
                                HStack {
                                    Spacer()
                                    Button(action: {
                                        self.list.action9.send()
                                    }) {
                                        Image(systemName: "moon.stars.fill")
                                    }
                                    .buttonBorderShape(.roundedRectangle)
                                    .buttonStyle(.bordered)
                                    .font(.largeTitle)
                                    Button(action: {
                                        self.list.action8.send()
                                    }) {
                                        Image(systemName: "cloud.fill")
                                    }
                                    .buttonBorderShape(.roundedRectangle)
                                    .buttonStyle(.bordered)
                                    .font(.largeTitle)
                                    Button(action: {
                                        self.list.action10.send()
                                    }) {
                                        Image(systemName: "drop.fill")
                                    }
                                    .buttonBorderShape(.roundedRectangle)
                                    .buttonStyle(.bordered)
                                    .font(.largeTitle)
                                }
                            }
                        }
                        .padding()
                    }
                    .edgesIgnoringSafeArea(.all)
                } else {
                    if self.list.lista == 14 {
                        ZStack {
                            ARViewContainer12(model: list)
                            HStack {
                                Button(action: {
                                    self.list.lista = 0
                                }) {
                                    Image(systemName: "return")
                                }
                                .buttonBorderShape(.roundedRectangle)
                                .buttonStyle(.bordered)
                                .font(.largeTitle)
                                .frame(maxHeight: .infinity, alignment: .bottomTrailing)
                                Spacer()
                                Button(action: {
                                    if isActive == false {
                                        isActive = true
                                        self.list.action2.send()
                                        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(Int(speed)), execute: {
                                            isActive = false
                                        })
                                    }
                                }) {
                                    Image(systemName: "arrow.left.square")
                                }
                                .buttonBorderShape(.roundedRectangle)
                                .buttonStyle(.bordered)
                                .font(.largeTitle)
                                VStack {
                                    Button(action: {
                                        if isActive == false {
                                            isActive = true
                                            self.list.flipTriggerSignal.send()
                                            DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(Int(speed)), execute: {
                                                isActive = false
                                            })
                                        }
                                    }) {
                                        Image(systemName: "arrow.up.square")
                                    }
                                    .buttonBorderShape(.roundedRectangle)
                                    .buttonStyle(.bordered)
                                    .font(.largeTitle)
                                    Button(action: {}) {
                                        Image(systemName: "circle.square")
                                    }
                                    .buttonBorderShape(.roundedRectangle)
                                    .buttonStyle(.bordered)
                                    .font(.largeTitle)
                                    Button(action: {
                                        if isActive == false {
                                            isActive = true
                                            self.list.action4.send()
                                            DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(Int(speed)), execute: {
                                                isActive = false
                                            })
                                        }
                                    }) {
                                        Image(systemName: "arrow.down.square")
                                    }
                                    .buttonBorderShape(.roundedRectangle)
                                    .buttonStyle(.bordered)
                                    .font(.largeTitle)
                                }
                                Button(action: {
                                    if isActive == false {
                                        isActive = true
                                        self.list.action3.send()
                                        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(Int(speed)), execute: {
                                            isActive = false
                                        })
                                    }
                                }) {
                                    Image(systemName: "arrow.right.square")
                                }
                                .buttonBorderShape(.roundedRectangle)
                                .buttonStyle(.bordered)
                                .font(.largeTitle)
                            }
                            .padding()
                        }
                        .edgesIgnoringSafeArea(.all)
                    } else {
                        if self.list.lista == 15 {
                            ZStack {
                                ARViewContainer13(model: list)
                                HStack {
                                    Button(action: {
                                        self.list.lista = 0
                                    }) {
                                        Image(systemName: "return")
                                    }
                                    .buttonBorderShape(.roundedRectangle)
                                    .buttonStyle(.bordered)
                                    .font(.largeTitle)
                                    .frame(maxHeight: .infinity, alignment: .bottomTrailing)
                                    Spacer()
                                    Button(action: {
                                        if isActive == false {
                                            isActive = true
                                            self.list.action2.send()
                                            DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(Int(speed)), execute: {
                                                isActive = false
                                            })
                                        }
                                    }) {
                                        Image(systemName: "arrow.left.square")
                                    }
                                    .buttonBorderShape(.roundedRectangle)
                                    .buttonStyle(.bordered)
                                    .font(.largeTitle)
                                    VStack {
                                        Button(action: {
                                            if isActive == false {
                                                isActive = true
                                                self.list.flipTriggerSignal.send()
                                                DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(Int(speed)), execute: {
                                                    isActive = false
                                                })
                                            }
                                        }) {
                                            Image(systemName: "arrow.up.square")
                                        }
                                        .buttonBorderShape(.roundedRectangle)
                                        .buttonStyle(.bordered)
                                        .font(.largeTitle)
                                        Button(action: {}) {
                                            Image(systemName: "circle.square")
                                        }
                                        .buttonBorderShape(.roundedRectangle)
                                        .buttonStyle(.bordered)
                                        .font(.largeTitle)
                                        Button(action: {
                                            if isActive == false {
                                                isActive = true
                                                self.list.action4.send()
                                                DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(Int(speed)), execute: {
                                                    isActive = false
                                                })
                                            }
                                        }) {
                                            Image(systemName: "arrow.down.square")
                                        }
                                        .buttonBorderShape(.roundedRectangle)
                                        .buttonStyle(.bordered)
                                        .font(.largeTitle)
                                    }
                                    Button(action: {
                                        if isActive == false {
                                            isActive = true
                                            self.list.action3.send()
                                            DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(Int(speed)), execute: {
                                                isActive = false
                                            })
                                        }
                                    }) {
                                        Image(systemName: "arrow.right.square")
                                    }
                                    .buttonBorderShape(.roundedRectangle)
                                    .buttonStyle(.bordered)
                                    .font(.largeTitle)
                                }
                                .padding()
                            }
                            .edgesIgnoringSafeArea(.all)
                        } else {
                            if self.list.lista == 16 {
                                GalleryView()
                                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                            }
                        }
                    }
                }
            }
        }
    }
}


struct ARViewContainer: UIViewRepresentable {
    let model: Potato
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience1.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        model.action7.sink {
            boxAnchor.notifications.restart.post()
        }.store(in: &context.coordinator.subscriptions)
        
        return arView
            
    }
        
    func updateUIView(_ uiView: ARView, context: Context) {}
    
    class Coordinator: NSObject {
        var subscriptions = Set<AnyCancellable>()
    }
}
struct ARViewContainer3: UIViewRepresentable {
    let model: Potato
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience3.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        model.action5.sink {
            boxAnchor.notifications.mostrar.post()
        }.store(in: &context.coordinator.subscriptions)
        
        model.action6.sink {
            boxAnchor.notifications.ocultar.post()
        }.store(in: &context.coordinator.subscriptions)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
    class Coordinator: NSObject {
        var subscriptions = Set<AnyCancellable>()
    }
}
struct ARViewContainer4: UIViewRepresentable {
    let model: Potato
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience4.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        model.action5.sink {
            boxAnchor.notifications.houses.post()
        }.store(in: &context.coordinator.subscriptions)
        
        model.action6.sink {
            boxAnchor.notifications.trem.post()
        }.store(in: &context.coordinator.subscriptions)
        
        model.action7.sink {
            boxAnchor.notifications.farol.post()
        }.store(in: &context.coordinator.subscriptions)
        
        model.action8.sink {
            boxAnchor.notifications.escola.post()
        }.store(in: &context.coordinator.subscriptions)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    class Coordinator: NSObject {
        var subscriptions = Set<AnyCancellable>()
    }
    
}
struct ARViewContainer5: UIViewRepresentable {
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience5.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
    


struct ARViewContainer8: UIViewRepresentable {
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience8.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
struct ARViewContainer9: UIViewRepresentable {
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience9.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
struct ARViewContainer10: UIViewRepresentable {
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience6.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
struct ARViewContainer11: UIViewRepresentable {
    let model: Potato
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience10.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        model.action8.sink {
            boxAnchor.notifications.sky.post()
        }.store(in: &context.coordinator.subscriptions)
        
        model.action9.sink {
            boxAnchor.notifications.planets.post()
        }.store(in: &context.coordinator.subscriptions)
        
        model.action10.sink {
            boxAnchor.notifications.dive.post()
        }.store(in: &context.coordinator.subscriptions)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    class Coordinator: NSObject {
        var subscriptions = Set<AnyCancellable>()
    }
}
struct ARViewContainer12: UIViewRepresentable {
    let model: Potato
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience11.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        // Use the flip trigger signal to send notification.
        model.flipTriggerSignal.sink {
            boxAnchor.notifications.tankForward.post()
        }.store(in: &context.coordinator.subscriptions)
        
        model.action2.sink {
            boxAnchor.notifications.tankLeft.post()
        }.store(in: &context.coordinator.subscriptions)
        
        model.action3.sink {
            boxAnchor.notifications.tankRight.post()
        }.store(in: &context.coordinator.subscriptions)
        
        model.action4.sink {
            boxAnchor.notifications.tankBackwards.post()
        }.store(in: &context.coordinator.subscriptions)
        
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        
    }
    
    class Coordinator: NSObject {
        var subscriptions = Set<AnyCancellable>()
    }
}

struct ARViewContainer13: UIViewRepresentable {
    let model: Potato
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience12.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        // Use the flip trigger signal to send notification.
        model.flipTriggerSignal.sink {
            boxAnchor.notifications.tankForward.post()
        }.store(in: &context.coordinator.subscriptions)
        
        model.action2.sink {
            boxAnchor.notifications.tankLeft.post()
        }.store(in: &context.coordinator.subscriptions)
        
        model.action3.sink {
            boxAnchor.notifications.tankRight.post()
        }.store(in: &context.coordinator.subscriptions)
        
        model.action4.sink {
            boxAnchor.notifications.tankBackwards.post()
        }.store(in: &context.coordinator.subscriptions)
        
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        
    }
    
    class Coordinator: NSObject {
        var subscriptions = Set<AnyCancellable>()
    }
}


struct Principal_Previews: PreviewProvider {
    static var previews: some View {
        SceneView()
            .environmentObject(Potato())
    }
}
