//
//  BooksData.swift
//  appDesafio
//
//  Created by MacBook on 31/01/22.
//

import Foundation

// MARK: - BooksData
struct BooksData: Codable {
    let data: [Datum]
}

// MARK: - Datum
struct Datum: Codable {
    let type, id: String
    let attributes: Attributes
    let relationships: Relationships
    let links: DatumLinks
}

// MARK: - Attributes
struct Attributes: Codable {
    let title, slug, content: String
    let createdAt, updatedAt: Date

    enum CodingKeys: String, CodingKey {
        case title, slug, content
        case createdAt = "created-at"
        case updatedAt = "updated-at"
    }
}

// MARK: - DatumLinks
struct DatumLinks: Codable {
    let linksSelf: String

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
    }
}

// MARK: - Relationships
struct Relationships: Codable {
    let authors, categories: Authors
}

// MARK: - Authors
struct Authors: Codable {
    let links: AuthorsLinks
}

// MARK: - AuthorsLinks
struct AuthorsLinks: Codable {
    let linksSelf, related: String

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
        case related
    }
}
