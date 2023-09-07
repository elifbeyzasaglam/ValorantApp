//
//  Endpointable.swift
//  ValorantApp
//
//  Created by ELİF BEYZA SAĞLAM on 7.09.2023.
//

import Foundation

protocol Endpointable {
    var baseURL: String { get }
    var fullPath: String { get }
    var rawValue: String { get }
}
