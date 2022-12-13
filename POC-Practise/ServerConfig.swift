//
//  ServerConfig.swift
//  POC-Practise
//
//  Created by Telha Wasim on 12/12/2022.
//

import Foundation

enum BaseURL: String {
    case LOCAL = "https://abc.local.com"
    case DEV = "https://abc.dev.com"
    case QA = "https://abc.qa.com"
}

public class ServerConfig {
    static let shared: ServerConfig = ServerConfig()
    
    var baseURL: String?
    
    func serverConfig() {
        
        #if LOCAL
        self.baseURL = BaseURL.LOCAL.rawValue
        
        #elseif DEV
        self.baseURL = BaseURL.DEV.rawValue
        
        #elseif QA
        self.baseURL = BaseURL.QA.rawValue
        
        #endif
    }
}
