//
//  parser.swift
//  ChuckApi
//
//  Created by Dmitriy Piskunov on 9.12.21.
//

import Foundation


// MARK: - Welcome
struct Welcome: Codable {
    let iconURL: String
    let id, url, value: String

    enum CodingKeys: String, CodingKey {
        case iconURL = "icon_url"
        case id, url, value
    }
}
