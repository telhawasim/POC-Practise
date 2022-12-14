//
//  EmployeeDataVM.swift
//  pos-practise
//
//  Created by Telha Wasim on 14/12/2022.
//

import Foundation

class EmployeeDataVM {
    
    var employeeResponse: Employees?
    
    private let sourcesURL = URL(string: "https://dummy.restapiexample.com/api/v1/employees")!
        
        func apiToGetEmployeeData(completion : @escaping (Employees) -> ()){
            URLSession.shared.dataTask(with: sourcesURL) { (data, urlResponse, error) in
                if let data = data {
                    
                    let jsonDecoder = JSONDecoder()
                    
                    let empData = try! jsonDecoder.decode(Employees.self, from: data)
                        completion(empData)
                        self.employeeResponse = empData
                }
            }.resume()
        }
}

