//
//  fooddetail.swift
//  listproject
//
//  Created by User06 on 2020/4/15.
//  Copyright © 2020 bc. All rights reserved.
//

import SwiftUI

struct fooddetail: View {
    @State private var show = false
    var food:Food
    var body: some View {
        VStack{
            if show{
                ScrollView(.vertical){
            Group{
                Image(food.name)
                .resizable()
                .scaledToFill()
                    .frame(width:300 ,height:400)
                    .position(x:200 ,y: 300)
                    .transition(.opacity)
                Spacer()
                Text(food.name)
                .font(Font.system(size: 36))
                .position(x:200 , y:380)
                .foregroundColor(.yellow)
                
                Text("☆" + food.cost + "★" )
                    .font(Font.system(size: 28))
                    .position(x:200 , y:280)
                    .foregroundColor(.red)
                Text("餐點介紹 : ")
                    .font(Font.system(size: 30))
                    .position(x:200 , y:180)
                    .foregroundColor(.blue)
                Text(food.introd)
                .font(Font.system(size: 20))
                .frame(width:400 ,height:400)
                .position(x:200 , y:150)
                .font(.system(size: 100, weight: .regular, design: .rounded))
            }
            .frame(width:400 ,height:680)
            .position(x:200 , y:185)
                }
                
        }
        }
        .animation(.linear(duration:3))
        .onAppear{
            self.show = true
            }
        
    }
}

struct fooddetail_Previews: PreviewProvider {
    static var previews: some View {
        fooddetail(food: foods[0])
    }
}
