//
//  ViewController.swift
//  new
//
//  Created by Celio Junior on 30/04/25.
//

import UIKit

enum Shift: String
{
    case morning = "Good Morning"
    case night = "Good Night"
}

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var name: String = ""
    var shift: Shift = .morning
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
        label.text = "OIE"
    }
    
    func setLayout()
    {
        view.backgroundColor = UIColor(named: (shift == .morning) ? "Orange" : "Purple")
        
        label.text = "\(shift.rawValue) \(name)"
        label.textColor = UIColor(named: (shift != .morning) ? "Orange" : "Purple")
        image.image = UIImage(named: (shift == .morning) ? "GoodMorning" : "GoodNight")
    }

    @IBAction func changeShift(_ sender: Any) {
        self.shift = (shift == .morning) ? .night : .morning
        setLayout()
    }
    @IBAction func changeName(_ sender: Any) {
        self.name = textField.text ?? ""
        textField.text = ""
        setLayout()
    }
    
}

