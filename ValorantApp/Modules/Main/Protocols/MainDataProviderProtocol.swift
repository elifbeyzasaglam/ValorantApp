//
//  MainDataProviderProtocol.swift
//  ValorantApp
//
//  Created by ELİF BEYZA SAĞLAM on 7.09.2023.
//

import Foundation

protocol MainDataProviderProtocol {
    func fetechAgents(endpoint: MainEndpoint, parameters: [MainParameter]?, completion: @escaping (Result<AgentResponse, Error>) -> ())
}
