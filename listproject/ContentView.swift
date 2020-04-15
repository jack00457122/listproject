//
//  ContentView.swift
//  listproject
//
//  Created by User06 on 2020/4/15.
//  Copyright © 2020 bc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            foodlist().tabItem{
                Image(systemName: "list.bullet")
                Text("菜單列表")
            }
            foodoverview().tabItem{
                Image(systemName: "book.circle")
                Text("圖片試閱")
            }
        }.accentColor(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

