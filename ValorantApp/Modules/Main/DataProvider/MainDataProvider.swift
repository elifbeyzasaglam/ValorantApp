//
//  MainDataProvider.swift
//  ValorantApp
//
//  Created by ELİF BEYZA SAĞLAM on 7.09.2023.
//

import Foundation

final class MainDataProvider: MainDataProviderProtocol {
    private let serviceManager: Networkable
    
    init(serviceManager: Networkable) {
        self.serviceManager = serviceManager
    }
    
    func fetechAgents(endpoint: MainEndpoint, parameters: [MainParameter]?, completion: @escaping (Result<AgentResponse, Error>) -> ()) {
        serviceManager.fetchData(endpoint: endpoint, parameters: parameters, completion: completion)
    }
}
