//
//  ParameterEncoding.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 29.05.2022.
//

import Foundation

public typealias Parameters = [String : Any]

public protocol ParameterEncoder {
    static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws
}

public enum NetworkError: String, Error {
    
    case parametersNil = "Parameters were nil"
    case encodingFailed = "Parameters encoding failed"
    case missingURL = "URL is nil"
    
}
