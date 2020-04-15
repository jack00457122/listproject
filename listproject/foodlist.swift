//
//  foodlist.swift
//  listproject
//
//  Created by User06 on 2020/4/15.
//  Copyright © 2020 bc. All rights reserved.
//

import SwiftUI

struct foodlist: View {
    var body: some View {
        NavigationView{
            List{
                Group{
                    Section(header: Text("餐點").font(.largeTitle).foregroundColor(.orange)){
                        NavigationLink(destination: fooddetail(food: foods[0])){
                            foodrow(food: foods[0])
                        }
                        NavigationLink(destination: fooddetail(food: foods[1])){
                             foodrow( food: foods[1])
                        }
                        NavigationLink(destination: fooddetail(food: foods[2])){
                             foodrow( food: foods[2])
                        }
                        NavigationLink(destination: fooddetail(food: foods[3])){
                             foodrow( food: foods[3])
                        }
                        NavigationLink(destination: fooddetail(food: foods[4])){
                             foodrow( food: foods[4])
                        }
                        NavigationLink(destination: fooddetail(food: foods[5])){
                             foodrow( food: foods[5])
                        }
                    }
                }
                Group{
                    Section(header: Text("飲料").font(.largeTitle).foregroundColor(.red)){
                        NavigationLink(destination: fooddetail( food: foods[6])){
                             foodrow( food: foods[6])
                        }
                        NavigationLink(destination: fooddetail(food: foods[7])){
                             foodrow( food: foods[7])
                        }
                        NavigationLink(destination: fooddetail(food: foods[8])){
                             foodrow( food: foods[8])
                        }
                        NavigationLink(destination: fooddetail(food: foods[9])){
                             foodrow( food: foods[9])
                        }
                    }
                }
            }
                .navigationBarTitle("早餐 簡介")
            .onAppear {
               UITableView.appearance().separatorColor = .clear
            }
        }
    }
}

struct foodlist_Previews: PreviewProvider {
    static var previews: some View {
        foodlist()
    }
}
