//
//  DatePickerViewController.swift
//  UIColorPicker
//
//  Created by MURALI on 29/08/21.
//

import UIKit

class DatePickerViewController: UIViewController {

    // OUTLET
    @IBOutlet weak var dateLabelField: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let date = Date()
        let formater = DateFormatter()
        formater.calendar = .current
        formater.dateStyle = .full

        let currentDate = formater.string(from: date)
        dateLabelField.backgroundColor = nil
        dateLabelField.text = currentDate
        print("The Current date is: \(currentDate)")
        
        
    // DatePicker
        datePicker = UIDatePicker()
        datePicker.date = Date()
        datePicker.locale = .current
        datePicker.preferredDatePickerStyle = .compact
        datePicker.addTarget(self, action: #selector(handleDateSelection), for: .valueChanged)
    }
    @objc func handleDateSelection() {
        
    }
}
