//
//  BooksManager.swift
//  appDesafio
//
//  Created by MacBook on 31/01/22.
//

import Foundation

struct BooksManager {
    let bookUrl = "https://playground-bookstore.herokuapp.com/api/v1/books"
   
    
    func fetchBook(bookName: String) {
        let urlString = "\(bookUrl)"
        perfomRequest(urlString: urlString)
    }
    
    func perfomRequest(urlString: String) {
        // Hacemos los 4 pasos
        
        //1.Crear un URL
        if let url = URL(string: urlString) {
            //2. Create a URLSession
            
            let session = URLSession(configuration: .default)
            //3. Darle la session una tarea
            let task = session.dataTask(with: url) {(data, response, error)
                in
                if error != nil{
                    print(error)
                    return
                }
                if let safeData = data {
                    self.parseJSON(booksData: safeData)
                  
                }
                
            }
            //4. empezar la tarea
            task.resume()
        }
    }
    
    func parseJSON(booksData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(BooksData.self, from: booksData)

            print(decodedData.data)


            
        } catch {
            print(error)
        }
    }
    
    
}
