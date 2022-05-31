//
//  HTTPTask.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 29.05.2022.
//

import Foundation

public typealias HTTPHeaders = [String : String]

public enum HTTPTask {
    
    case reques
    case requestParameters(bodyParameters: Parameters?,
                           urlParameters: Parameters?)
    case requestParametersAndHeaders(bodyParameters: Parameters?,
                                     urlParameters: Parameters?,
                                     additionHeaders: HTTPHeaders?)
    
}
