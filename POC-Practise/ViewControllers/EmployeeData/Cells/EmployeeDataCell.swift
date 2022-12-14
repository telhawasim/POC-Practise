//
//  EmployeeDataCell.swift
//  POC-Practise
//
//  Created by Telha Wasim on 14/12/2022.
//

import UIKit

class EmployeeDataCell: UITableViewCell {
    
    //MARK: Outlet
    @IBOutlet weak var lblId: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblSalary: UILabel!
    
    //MARK: Variables
    
    //MARK: Lifecylce

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func config(data: EmployeeData) {
        self.lblId.text = "\(data.id ?? 0)"
        self.lblName.text = data.employeeName
        self.lblAge.text = "\(data.employeeAge ?? 0)"
        self.lblSalary.text = "\(data.employeeSalary ?? 0)"
    }
    
}
