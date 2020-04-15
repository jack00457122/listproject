//
//  foodoverview.swift
//  listproject
//
//  Created by User06 on 2020/4/15.
//  Copyright © 2020 bc. All rights reserved.
//

import SwiftUI

struct foodoverview: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 122/255, green: 130/255, blue: 180/255)
                ScrollView(.horizontal){
                    HStack(spacing: 15){
                        ForEach(0..<foods.count) { (index) in
                            NavigationLink(destination:fooddetail(food:foods[index])){
                                Image(foods[index].name)
                                    .renderingMode(.original)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 300,height:500)
                                    .clipped()
                            }
                        }
                    }
                    .frame(height: 600)
                }
                }.edgesIgnoringSafeArea(.all).navigationBarTitle("圖片試閱")
        }
    }
}

struct foodoverview_Previews: PreviewProvider {
    static var previews: some View {
        foodoverview()
    }
}
