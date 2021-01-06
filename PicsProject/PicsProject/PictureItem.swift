//
//  PictureItem.swift
//  PicsProject
//
//  Created by Pragnya Deshpande on 16/09/20.
//  Copyright © 2020 PragnyaDesh. All rights reserved.
//

import SwiftUI

struct PictureItem: View {
    
    var picture: Picture
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(picture.imageName)
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 170)
            .cornerRadius(10)
                .shadow(radius: 10)
            
            VStack(alignment: .leading, spacing: 5.0){
            Text(picture.name)
                .font(.headline)
            
            Text(picture.description)
                .font(.subheadline)
                .multilineTextAlignment(.leading)
            .lineLimit(2)
            .frame(height: 40)
            }
        }
    }
}

struct PictureItem_Previews: PreviewProvider {
    static var previews: some View {
        PictureItem(picture: pictureData[0])
    }
}
