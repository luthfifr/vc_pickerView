//
//  ViewController.swift
//  viewController_pickerView
//
//  Created by Luthfi Fathur Rahman on 5/23/17.
//  Copyright © 2017 Luthfi Fathur Rahman. All rights reserved.
//

import UIKit

//single component
/*class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {

    @available(iOS 2.0, *)
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    @IBOutlet weak var textField: UITextField!
    let dataPicker = UIPickerView()
    let data1 = ["Row 1", "Row 2", "Row 3", "Row 4", "Row 5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataPicker.tag = 0
        dataPicker.delegate = self
        dataPicker.dataSource = self
        textField.delegate = self
        
        textField.inputView = dataPicker
        
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1)
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.plain, target: self, action: #selector(ViewController.donePicker))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItemStyle.plain, target: self, action: #selector(ViewController.cancelPicker))
        
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        textField.inputAccessoryView = toolBar
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data1.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data1[row]
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField)->Bool {
        dataPicker.isHidden = false
        dataPicker.selectRow(dataPicker.selectedRow(inComponent: 0), inComponent: 0, animated: true)
        return false
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        dataPicker.isHidden = true
    }
    
    func donePicker()
    {
        if (textField.isEditing) {
            let row = dataPicker.selectedRow(inComponent: 0)
            textField.text = pickerView(dataPicker, titleForRow: row, forComponent: 0)
        }
        
        self.view.endEditing(true)
    }
    
    func cancelPicker(){
        self.view.endEditing(true)
    }

}*/

//multi components
class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    @available(iOS 2.0, *)
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return timeData.count
    }
    
    @IBOutlet weak var textField: UITextField!
    let timePicker = UIPickerView()
    let timeData: [[String]] = [["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],["00", "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59"],["AM", "PM"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timePicker.tag = 0
        timePicker.delegate = self
        timePicker.dataSource = self
        textField.delegate = self
        
        textField.inputView = timePicker
        
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1)
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.plain, target: self, action: #selector(ViewController.donePicker))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItemStyle.plain, target: self, action: #selector(ViewController.cancelPicker))
        
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        textField.inputAccessoryView = toolBar
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return timeData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return timeData[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return timeData[component][row]
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField)->Bool {
        timePicker.isHidden = false
        timePicker.selectRow(timePicker.selectedRow(inComponent: 0), inComponent: 0, animated: true)
        return false
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        timePicker.isHidden = true
    }
    
    func donePicker()
    {
        if (textField.isEditing) {
            let row = timePicker.selectedRow(inComponent: 0)
            textField.text = pickerView(timePicker, titleForRow: row, forComponent: 0)!+" : "+pickerView(timePicker, titleForRow: row, forComponent: 1)!+" "+pickerView(timePicker, titleForRow: row, forComponent: 2)!
        }
        
        self.view.endEditing(true)
    }
    
    func cancelPicker(){
        self.view.endEditing(true)
    }
    
}
