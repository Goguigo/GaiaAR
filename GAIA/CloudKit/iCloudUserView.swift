//
//  iCloudUserView.swift
//  GAIA
//
//  Created by Rodrigo Pellanda on 14/10/22.
//

import SwiftUI
import CloudKit
import Combine


struct FruitModel: Hashable {
    let name: String
    let record: CKRecord
}

class CloudKitCrudBootcampViewModel: ObservableObject {
    
    @Published var text: String = ""
    @Published var items: [FruitModel] = []
    @Published var status: Int = 0
    
    init() {
        fetchItems()
    }
    
    func addButtonPressed() {
        guard !text.isEmpty else { return }
        addItem(name: text)
    }
    
    private func addItem(name: String) {
        let newItem = CKRecord(recordType: "Items")
        newItem["name"] = name
        saveItem(record: newItem)
    }
    
    private func saveItem(record: CKRecord) {
        CKContainer.default().privateCloudDatabase.save(record) { [weak self] returnedRecord, returnedError in
            print(returnedRecord ?? "")
            print(returnedError ?? "")
            DispatchQueue.main.async {
                self?.fetchItems()
            }
        }
    }
    
    func fetchItems() {
        let predicate = NSPredicate(value: true)
        let query = CKQuery(recordType: "Items", predicate: predicate)
        let queryOperation = CKQueryOperation(query: query)
        
        var returnedItems: [FruitModel] = []
        
        queryOperation.recordMatchedBlock = { [weak self] (returnedRecordID, returnedResult) in
            switch returnedResult {
            case .success(let record):
                guard let name = record["name"] as? String else { return }
                returnedItems.append(FruitModel(name: name, record: record))
                DispatchQueue.main.async {
                    self?.status = 1
                }
            case .failure(let error):
                print(error)
                DispatchQueue.main.async {
                    self?.status = 2
                }
                
            }
        }
        queryOperation.queryResultBlock = { [weak self] returnedResult in
            print(returnedResult)
            DispatchQueue.main.async {
                self?.items = returnedItems
            }
        }
        addOperation(operation: queryOperation)
    }
    func addOperation (operation: CKDatabaseOperation) {
        CKContainer.default().privateCloudDatabase.add(operation)
    
}
    
    
    func updateItem(fruit: FruitModel) {
        let record = fruit.record
        record["name"] = "NEW NAME!!!!!"
        saveItem(record: record)
        }
    
    func deleteItem(indexSet: IndexSet) {
        guard let index = indexSet.first else { return }
        let fruit = items[index]
        let record = fruit.record
        
        CKContainer.default().privateCloudDatabase.delete(withRecordID: record.recordID) { [weak self]
            returnedRecordID, returnedError in
            DispatchQueue.main.async {
                self?.items.remove(at: index)
            }
        }
    }
    
}

struct CloudKitCrudBootcamp: View {
    
    @StateObject private var vm = CloudKitCrudBootcampViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                header
                List {
                    ForEach(vm.items, id: \.self) { fruit in
                        
                        Text(fruit.name)
                        
                    }
                    .onDelete(perform: vm.deleteItem)
                }
                .listStyle(PlainListStyle())
                .toolbar {
                    EditButton()
                }
            }
            .padding()
            .navigationBarBackButtonHidden(false)
        }
    }
}

struct CloudKitCrudBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        CloudKitCrudBootcamp()
    }
}

extension CloudKitCrudBootcamp {
    
    private var header: some View {
            Text("Textos:")
                .font(.title)
        }
    
    
    private var textField: some View {
        TextField("Add something here...", text: $vm.text)
            .frame(height: 55)
            .padding(.leading)
            .background(Color.gray.opacity(0.4))
            .cornerRadius(10)
    }
    
    private var addButton: some View {
        Button {
            vm.addButtonPressed()
        } label: {
            Text("Add")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.pink)
                .cornerRadius(10)
        }
    }
    
}
