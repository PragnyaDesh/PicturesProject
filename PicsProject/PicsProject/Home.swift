//
//  Home.swift
//  PicsProject
//
//  Created by Pragnya Deshpande on 09/10/20.
//  Copyright © 2020 PragnyaDesh. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var catgories:[String:[Picture]]{
        .init(
            grouping: pictureData,
            by: {$0.category.rawValue}
        )
    }
    
    var body: some View {
        NavigationView{
            List(catgories.keys.sorted(), id: \String.self){key in
                PictureRow(categoryName: "\(key)".uppercased(), pictures: self.catgories[key]!)
                    .frame(height: 320)
                    .padding(.top)
                    .padding(.bottom)
                
            }
            .navigationBarTitle(Text("PICTURES"))
           }
        }
    }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
            HomeView()
        }
    }
}
