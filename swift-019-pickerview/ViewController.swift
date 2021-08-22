//
//  ViewController.swift
//  swift-019-pickerview
//
//  Created by Luiz Carlos da Silva Araujo on 21/08/21.
//

import UIKit

class ViewController: UIViewController {
    let avatars = ["sasha", "ava", "harsh", "batman", "fatima", "alfred"]
    @IBOutlet var chooseAvatarPickerView: UIPickerView!
    @IBOutlet var avatarImg: UIImageView!
    @IBOutlet var avatarLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chooseAvatarPickerView.delegate = self
        chooseAvatarPickerView.dataSource = self
    }


}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return avatars.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return avatars[row].capitalized
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        avatarLbl.text = avatars[row].capitalized
        avatarImg.image = UIImage(named: avatars[row])
    }
}











































