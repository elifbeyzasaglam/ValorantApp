//
//  MainParameter.swift
//  ValorantApp
//
//  Created by ELİF BEYZA SAĞLAM on 7.09.2023.
//

import Foundation

enum MainParameter: Parameterable {

    case language(String)
    
    var queryItem: URLQueryItem {
        switch self {
        case .language(let value):
            return URLQueryItem(name: "language", value: value)
        }
    }
}
