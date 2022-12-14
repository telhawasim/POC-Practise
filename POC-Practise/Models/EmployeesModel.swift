//
//  EmployeesModel.swift
//  POC-Practise
//
//  Created by Telha Wasim on 14/12/2022.
//

import Foundation

// MARK: - Employee
struct Employees: Decodable {
    var status: String?
    var data: [EmployeeData]?
}

// MARK: - EmployeeData
struct EmployeeData: Decodable {
    var id: Int?
    var employeeName: String?
    var employeeSalary: Int?
    var employeeAge: Int?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
    }
}
