//
//  EndPointType.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 29.05.2022.
//

import Foundation

protocol EndPointType {
    
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var header: HTTPHeaders? { get }
    
}
