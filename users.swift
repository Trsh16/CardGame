//
//  users.swift
//  TugasCard
//
//  Created by MacBook Pro on 10/11/23.
//

import Foundation

class ReadData: ObservableObject {
    @Published var users = [Card]()
    
    init(){
        loadData()
    }
    
    func loadData() {
        guard let url = Bundle.main.url(forResource: "WOT-Scryfall", withExtension: "json")
        else {
            print("JSON FILE NOT FOUND")
            return
        }
        
        let data = try? Data(contentsOf: url)
        let users = try? JSONDecoder().decode([Card].self, from: data!)
        self.users = users!
    }
}
