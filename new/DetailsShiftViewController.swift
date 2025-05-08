//
//  DetailsShiftViewController.swift
//  new
//
//  Created by Celio Junior on 06/05/25.
//

import UIKit

class DetailsShiftViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    var shift: Shift?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setLayout()
    }
    
    func setLayout()
    {
        guard let shift else {
            print("shift was not loaded correctly")
            return
        }
        image.image = UIImage(named: shift == .morning ? "Sunny" : "Nighty")
    }

}
