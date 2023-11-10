//
//  ContentView.swift
//  TugasCard
//
//  Created by MacBook Pro on 10/11/23.
//

import SwiftUI


//butuh tau untuk mengubah json > array / collection (Parsing)

struct ContentView: View {
    @ObservedObject var datas = ReadData()
    
    var body: some View {
        List(datas.users) { user in
            
            VStack{
                Text(user.name)
            }
        }
    }
}

#Preview {
    
    ContentView()
}
