//
//  CloudKitUtility.swift
//  Gaia Watch Watch App
//
//  Created by Rodrigo Pellanda on 16/10/22.
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


class CloudKitUserBootcampViewModel: ObservableObject {
    @Published var isSignedInToiCloud: Bool = false
    @Published var error: String = ""
    init() {
        getiCloudStatus ()
    }
    private func getiCloudStatus() {
        CKContainer.default () .accountStatus { [weak self] returnedStatus, returnedError in
            DispatchQueue.main.async {
                switch returnedStatus {
                case .available:
                    self?.isSignedInToiCloud = true
                case .noAccount:
                    self?.error = CloudKitError.iCloudAccountNotFound.rawValue
                case .couldNotDetermine:
                    self?.error = CloudKitError.iCloudAccountNotDetermined.rawValue
                case .restricted:
                    self?.error = CloudKitError.iCloudAccountRestricted.rawValue
                default:
                    self?.error = CloudKitError.iCloudAccountUnknown.rawValue
                }
            }
        }
    }
}

enum CloudKitError: String, LocalizedError {
    case iCloudAccountNotFound
    case iCloudAccountNotDetermined
    case iCloudAccountRestricted
    case iCloudAccountUnknown
}
