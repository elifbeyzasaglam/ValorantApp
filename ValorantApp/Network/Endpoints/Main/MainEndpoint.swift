//
//  MainEndpoint.swift
//  ValorantApp
//
//  Created by ELİF BEYZA SAĞLAM on 7.09.2023.
//

import Foundation

enum MainEndpoint: Endpointable {
    
    case agents
    case buddies
    
    var baseURL: String {
        return "https://valorant-api.com/v1"
    }
    
    var fullPath: String {
        return baseURL + self.rawValue
    }
    
    var rawValue: String {
        switch self {
        case .agents: return "/agents"
        case .buddies: return "/buddies"
        }
    }
}
