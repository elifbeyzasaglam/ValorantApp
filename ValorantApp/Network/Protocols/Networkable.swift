//
//  Networkable.swift
//  ValorantApp
//
//  Created by ELİF BEYZA SAĞLAM on 7.09.2023.
//

import Foundation

protocol Networkable {
    //closure'lar bellekte stack bölgesinde çaışır.
    //@escaping keyword'ü kullanıldığı zaman clouser heap bölgesine.
    func fetchData<T: Decodable>(endpoint: Endpointable, parameters: [Parameterable]?, completion: @escaping (Result<T, Error>) -> ())
}
