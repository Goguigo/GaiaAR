//
//  GalleryView.swift
//  GAIA
//
//  Created by Rodrigo Pellanda on 19/10/22.
//

import SwiftUI
import CoreData

struct GalleryView: View {
    @EnvironmentObject var list: Potato
    
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(entity: Drawing.entity(), sortDescriptors: []) var drawings: FetchedResults<Drawing>
    
    @State private var showSheet = false

    var body: some View {
        
        NavigationView{
            VStack{
                List {
                    ForEach(drawings){drawing in
                        NavigationLink(destination: DrawingView(id: drawing.id, data: drawing.canvasData, title: drawing.title), label: {
                            Text(drawing.title ?? "Untitled")
                        })
                    }
                    .onDelete(perform: deleteItem)
                    
                    Button(action: {
                        self.showSheet.toggle()
                    }, label: {
                        HStack{
                            Image(systemName: "plus")
                            Text("Nova tela...")
                        }
                    })
                    .foregroundColor(.blue)
                    .sheet(isPresented: $showSheet, content: {
                        AddNewCanvasView().environment(\.managedObjectContext, viewContext)
                    })
                }
                .navigationTitle(Text("Galeria"))
                .toolbar {
                    EditButton()
                }
                Button {
                    list.lista = 0
                } label: {
                    Image(systemName: "return")
                        .resizable()
                        .frame(width: 25, height: 25)
                }

                
            }
            VStack{
                Image(systemName: "scribble.variable")
                    .font(.largeTitle)
                Text("Nenhuma tela selecionada")
                    .font(.title)
            }
        }
        .navigationViewStyle(DoubleColumnNavigationViewStyle())
        
    }
    
    func deleteItem(at offset: IndexSet) {
        for index in offset{
            let itemToDelete = drawings[index]
            viewContext.delete(itemToDelete)
            do{
                try viewContext.save()
            }
            catch{
                print(error)
            }
        }
    }

}


struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
