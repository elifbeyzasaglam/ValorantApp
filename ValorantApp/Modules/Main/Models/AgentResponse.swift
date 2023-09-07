//
//  AgentResponse.swift
//  ValorantApp
//
//  Created by ELİF BEYZA SAĞLAM on 7.09.2023.
//

import Foundation

struct AgentResponse: Decodable {
    let data: [AgentDataResponse]?
}

struct AgentDataResponse: Decodable {
    let uuid: String?
    let displayName: String?
    let description: String?
    let displayIcon: String?
    let fullPortrait: String?
    let background: String?
    let backgroundGradientColors: [String]?
}
