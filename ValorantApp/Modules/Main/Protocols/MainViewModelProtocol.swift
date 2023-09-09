//
//  MainViewModelProtocol.swift
//  ValorantApp
//
//  Created by ELİF BEYZA SAĞLAM on 9.09.2023.
//

import Foundation

protocol MainViewModelProtocol {
    var delegate: MainViewModelDelegate? { get set }
    var agents: [AgentDataResponse] { get set }
    var mainTableCellType: [MainTableCellType] { get set }
    
    func fetchAgents()
}

enum MainViewNotify {
    case didFetchAgent
    case errorFetchAgent(error: String)
    case reloadTableView
}

protocol MainViewModelDelegate: AnyObject {
    func handle(notify: MainViewNotify)
}


