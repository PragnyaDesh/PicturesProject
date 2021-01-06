//
//  PictureRow.swift
//  PicsProject
//
//  Created by Pragnya Deshpande on 16/09/20.
//  Copyright © 2020 PragnyaDesh. All rights reserved.
//

import SwiftUI

struct PictureRow: View {
    
    var categoryName: String
    var pictures: [Picture]
    
    var body: some View {
        VStack(alignment: .leading){
            Text(self.categoryName)
                .font(.title)
                
        ScrollView(showsIndicators: false){
            HStack(alignment: .top) {
                ForEach(self.pictures, id:\.name){ picture in
                    
                    NavigationLink(
                        destination: PictureDetail(picture: picture))
                    {
                    
                    PictureItem(picture: picture)
                    .frame(width: 300)
                    .padding(.trailing, 30)
                    }
                  }
               }
            }
        }
    }
}

#if DEBUG
struct PictureRow_Previews: PreviewProvider {
    static var previews: some View {
        PictureRow(categoryName: "Hyderabad", pictures: pictureData)
    }
}
#endif
