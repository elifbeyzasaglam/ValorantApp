//
//  MainViewModel.swift
//  ValorantApp
//
//  Created by ELİF BEYZA SAĞLAM on 9.09.2023.
//

import Foundation

final class MainViewModel: MainViewModelProtocol {
    weak var delegate: MainViewModelDelegate?
    
    var agents: [AgentDataResponse] = []
    
    var mainTableCellType: [MainTableCellType] = []
    
    private let dataProvider: MainDataProviderProtocol
    
    init(dataProvider: MainDataProviderProtocol) {
        self.dataProvider = dataProvider
    }
    
    func fetchAgents() {
        dataProvider.fetechAgents(endpoint: .agents, parameters: [.language("tr-TR")]) { result in
            switch result {
            case .success(let success):
                self.mainTableCellType.append(.logo)
                self.mainTableCellType.append(.description)
                self.mainTableCellType.append(.categorySegmented)
                self.notify(with: .didFetchAgent)
            case .failure(let failure):
                break
            }
        }
    }
    
    private func notify(with notify: MainViewNotify) {
        DispatchQueue.main.async {
            self.delegate?.handle(notify: notify)
        }
    }
}
