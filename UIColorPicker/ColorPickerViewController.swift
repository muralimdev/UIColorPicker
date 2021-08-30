//
//  ColorPickerViewController.swift
//  UIColorPicker
//
//  Created by MURALI on 29/08/21.
//

import UIKit

class ColorPickerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickColorButton(_ sender: UIButton) {
        let colorPicker = UIColorPickerViewController()
        colorPicker.delegate = self
        colorPicker.selectedColor = view.backgroundColor!
        present(colorPicker, animated: true, completion: nil)
    }

}
extension ColorPickerViewController: UIColorPickerViewControllerDelegate {
    
    func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
        view.backgroundColor = viewController.selectedColor
    }
    
    func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
        view.backgroundColor = viewController.selectedColor
        dismiss(animated: true, completion: nil)
        
        /// this is for changes
        
    }
    
}
