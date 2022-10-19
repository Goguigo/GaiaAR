//
//  AddNewCanvasView.swift
//  GAIA
//
//  Created by Rodrigo Pellanda on 19/10/22.
//

import SwiftUI

struct AddNewCanvasView: View {
    
    @Environment (\.managedObjectContext) var viewContext
    @Environment (\.presentationMode) var presentationMode
    
    @State private var canvasTitle = ""
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    TextField("Nome da tela", text: $canvasTitle)
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationTitle(Text("Nova tela"))
            .navigationBarItems(leading: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
            }), trailing: Button(action: {
                if !canvasTitle.isEmpty{
                    let drawing = Drawing(context: viewContext)
                    drawing.title = canvasTitle
                    drawing.id = UUID()
                    
                    do {
                        try viewContext.save()
                    }
                    catch{
                        print(error)
                    }
                    
                    self.presentationMode.wrappedValue.dismiss()
                }
            }, label: {
                Text("Salvar")
            }))
        }
    }
}

struct AddNewCanvasView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewCanvasView()
    }
}
