//
//  PostData.swift
//  HackNewsApp
//
//  Created by Almira Khafizova on 03.04.24.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
