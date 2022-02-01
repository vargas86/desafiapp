//
//  BooksData.swift
//  appDesafio
//
//  Created by MacBook on 31/01/22.
//

import Foundation

struct BooksData : Codable {
    
    var data: [Data]
}

struct Data : Codable {
    
    var id: String
    var attributes : [Attributes]
}

struct Attributes: Codable {
    var title: String
    var slug: String
    var content: String
}

