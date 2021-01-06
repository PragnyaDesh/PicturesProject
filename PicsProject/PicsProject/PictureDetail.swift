//
//  PictureDetail.swift
//  PicsProject
//
//  Created by Pragnya Deshpande on 09/10/20.
//  Copyright © 2020 PragnyaDesh. All rights reserved.
//

import SwiftUI

struct PictureDetail: View {
    
    var picture:Picture
    
    
    var body: some View {
        List{
            ZStack (alignment: .bottom){
                Image(picture.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.25)
                    .blur(radius: 10)
                HStack{
                    VStack(alignment: .leading, spacing: 8){
                        Text(picture.name)
                            .foregroundColor(Color.white)
                            .font(.title)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }
            .listRowInsets(EdgeInsets())
            VStack(alignment: .leading) {
                Text(picture.description)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(12)
                HStack {
                    Spacer()
                    favouriteButton()
                    Spacer()
                }.padding(.top, 50)
            }.padding(.top)
            .padding(.bottom)
            
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(false)
        
    }
}

struct favouriteButton: View {
    var body: some View {
        Button(action: {}, label: {
            Text("Favourite")
        }).frame(width: 200, height: 50).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.892, saturation: 0.158, brightness: 0.966)/*@END_MENU_TOKEN@*/).border(/*@START_MENU_TOKEN@*/Color(hue: 0.86, saturation: 0.24, brightness: 0.977)/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        .font(.headline)
        .cornerRadius(10)
    }
    
}

#if DEBUG
struct PictureDetail_Previews: PreviewProvider {
    static var previews: some View {
        PictureDetail(picture: pictureData[3])
    }
}
#endif
