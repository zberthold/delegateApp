//
//  ViewController.swift
//  delegateApp
//
//  Created by Zoe Berthold on 10/24/18.
//  Copyright © 2018 Zoe Berthold. All rights reserved.
//

import UIKit

class BaseController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func chooseButtonTapped(_ sender: Any) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as!SelectionScreen
        selectionVC.selectionDelegate = self
        present(selectionVC, animated: true, completion: nil)
    }
    
}

extension BaseController: SideSelectionDelegate{
    func didTapChoice(name: String) {
        nameLabel.text = name
    }
}

