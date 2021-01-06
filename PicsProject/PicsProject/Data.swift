//
//  Data.swift
//  PicsProject
//
//  Created by Pragnya Deshpande on 16/09/20.
//  Copyright © 2020 PragnyaDesh. All rights reserved.
//

import Foundation

let pictureData:[Picture] = load("PictureData.json")


func load<T:Decodable>(_ filename:String, as type:T.Type=T.self) -> T{
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else{
            fatalError("Couldn't find \(filename) in main bundle")
    }
    do{
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't find \(filename) in main bundle:\n\(error)")
    }
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't find \(filename) as \(T.self):\n\(error)")
    }
}


