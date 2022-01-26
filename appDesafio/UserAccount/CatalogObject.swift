//
//  CatalogObject.swift
//  appDesafio
//
//  Created by MacBook on 23/01/22.
//

import Foundation
import UIKit

// Catálogo de Libros
class CatalogObject{
    var genres : [Genre]?
    var title : String?
    
    init(genres : [Genre], title : String){
        self.genres = genres
        self.title = title
    }
}

// Genero Literario - CATEGORIA
class Genre{
    var name : String?
    var books : [Book]?
    
    init(name: String, books : [Book]){
        self.name = name
        self.books = books
    }
}

// Book - Producto
class Book{
    var name : String?
    var synopsis : String?
    var image : String?
    var author : String?
    var about : String?
    var genre : String?
    
    init(name : String, synopsis : String, image : String, author : String, about : String, genre : String){
        self.name = name
        self.synopsis = synopsis
        self.image = image
        self.author = author
        self.about = about
        self.genre = genre
    }

}
