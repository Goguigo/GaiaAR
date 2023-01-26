//
//  TextEditorView.swift
//  GAIA
//
//  Created by Rodrigo Pellanda on 11/06/22.
//

import SwiftUI
import MessageUI
import UIKit

struct ActivityView: UIViewControllerRepresentable {
    let text: String

    func makeUIViewController(context: UIViewControllerRepresentableContext<ActivityView>) -> UIActivityViewController {
        return UIActivityViewController(activityItems: [text], applicationActivities: nil)
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: UIViewControllerRepresentableContext<ActivityView>) {}
}

struct ShareText: Identifiable {
    let id = UUID()
    let text: String
}

struct TextEditorView: View {
    @StateObject private var vm = CloudKitCrudBootcampViewModel()
    @EnvironmentObject var list: Potato
    @State var shadowStyle: Bool = false
    @State private var sendEmail = false
    @State var shareText: ShareText?
    @State var imageName: String = "icloud.fill"
    
 
    
    var body: some View {
        NavigationStack {
            VStack {
                #if !targetEnvironment(macCatalyst)
                HStack {
                    Button(action: {
                        vm.addButtonPressed()
                        self.list.lista = 0
                    }) {
                        Image(systemName: "chevron.left")
                    }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.roundedRectangle)
                    Spacer()
                    Group {
                        NavigationLink(destination: CloudKitCrudBootcamp()) {
                            Image(systemName: "folder.fill.badge.person.crop")
                        }
                        .buttonStyle(.bordered)
                        .buttonBorderShape(.roundedRectangle)
                        Spacer()
                            .frame(width: 20)
                    }
                    Button {
                        vm.addButtonPressed()
                    } label: {
                        Image(systemName: "plus.app.fill")
                    }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.roundedRectangle)
                    Spacer()
                        .frame(width: 20)
                    Button(action: {
                        vm.text = ""
                    }) {
                        Image(systemName: "trash.fill")
                    }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.roundedRectangle)
                    Spacer()
                        .frame(width: 20)
                    Group {
                        Button (action: {
                            if vm.text != "" {
                                shareText = ShareText(text: vm.text)
                            }
                        }) {
                            Image(systemName: "square.and.arrow.up.fill")
                        }
                        .buttonStyle(.bordered)
                        .buttonBorderShape(.roundedRectangle)
                        
                    }
                }
                Spacer()
                    .frame(height: 10)
                Divider()
#endif
                VStack {
                    TextField("Toque aqui para editar...", text: $vm.text)
                        .font(.system(size: list.fontSize))
                        .toolbar {
                            ToolbarItemGroup(placement: .keyboard) {
                                Group {
                                    Spacer()
                                    Button(action: {
                                        if list.fontSize >= 0 {
                                            list.fontSize -= 1
                                        }
                                    }) {
                                        Text("-")
                                    }
                                    .buttonStyle(.bordered)
                                    .buttonBorderShape(.roundedRectangle)
                                    Image(systemName: "textformat.size")
                                    Button(action: {
                                        if list.fontSize < 32 {
                                            list.fontSize += 1
                                        }
                                    }) {
                                        Text("+")
                                    }
                                    .buttonStyle(.bordered)
                                    .buttonBorderShape(.roundedRectangle)
                                }
                            }
                }
                    Spacer()
                }
            }
            .sheet(item: $shareText) { shareText in
                ActivityView(text: shareText.text)
            }
            .padding()
#if targetEnvironment(macCatalyst)
.toolbar {
    ToolbarItemGroup {
        HStack {
            Button(action: {
                vm.addButtonPressed()
                self.list.lista = 0
            }) {
                Image(systemName: "chevron.left")
            }
            .buttonStyle(.borderless)
            Spacer()
                .frame(width: 40)
            Group {
                NavigationLink(destination: CloudKitCrudBootcamp()) {
                    Image(systemName: "folder.fill.badge.person.crop")
                }
                .buttonStyle(.borderless)
                Spacer()
                    .frame(width: 20)
            }
            Button {
                vm.addButtonPressed()
            } label: {
                Image(systemName: "plus.app.fill")
            }
            .buttonStyle(.borderless)
            Spacer()
                .frame(width: 20)
            fontEditor()
            Button(action: {
                vm.text = ""
            }) {
                Image(systemName: "trash.fill")
            }
            .buttonStyle(.borderless)
            Spacer()
                .frame(width: 20)
            Group {
                Button (action: {
                    if vm.text != "" {
                        shareText = ShareText(text: vm.text)
                    }
                }) {
                    Image(systemName: "square.and.arrow.up.fill")
                }
                .buttonStyle(.borderless)
            }
        }
    }
}
#endif
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
            .environmentObject(Potato())
    }
}

struct fontEditor: View {
    @EnvironmentObject var list: Potato
    var body: some View {
        HStack {
            Button(action: {
                if list.fontSize >= 0 {
                    list.fontSize -= 1
                }
            }) {
                Text("-")
            }
            #if targetEnvironment(macCatalyst)
            .buttonStyle(.borderless)
            #else
            .buttonStyle(.bordered)
            .buttonBorderShape(.roundedRectangle)
            #endif
            Image(systemName: "textformat.size")
            Button(action: {
                if list.fontSize < 32 {
                    list.fontSize += 1
                }
            }) {
                Text("+")
            }
    #if targetEnvironment(macCatalyst)
            .buttonStyle(.borderless)
    #else
            .buttonStyle(.bordered)
            .buttonBorderShape(.roundedRectangle)
    #endif
            Spacer()
                .frame(width: 20)
        }
    }
}
