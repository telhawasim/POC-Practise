//
//  EmployeeDataVC.swift
//  POC-Practise
//
//  Created by Telha Wasim on 12/12/2022.
//

import UIKit

class EmployeeDataVC: UIViewController {
    
    //MARK: Outlet
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: Variables
    var viewModel = EmployeeDataVM()
    
    //MARK: Lifecylce
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        apiCalling()
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "EmployeeDataCell", bundle: nil), forCellReuseIdentifier: "EmployeeDataCell")
    }
}

//MARK: TableView Methods
extension EmployeeDataVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.employeeResponse?.data?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmployeeDataCell", for: indexPath) as! EmployeeDataCell
        if let data = viewModel.employeeResponse?.data {
            cell.config(data: data[indexPath.row])
        }
        return cell
    }
}

//MARK: API Calling
extension EmployeeDataVC {
    func apiCalling() {
        viewModel.apiToGetEmployeeData(completion: { [self] responseObject in
            if (responseObject.data != nil) {
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            else {
                print("Couldn't find data.")
            }
        })
    }
}

