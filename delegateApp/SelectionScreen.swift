//
//  SelectionScreen.swift
//  delegateApp
//
//  Created by Zoe Berthold on 10/24/18.
//  Copyright © 2018 Zoe Berthold. All rights reserved.
//

import UIKit

protocol SideSelectionDelegate {
    func didTapChoice(name:String)
}

class SelectionScreen: UIViewController {
    
    var selectionDelegate: SideSelectionDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func imperialButtonTapped(_ sender: Any) {
        selectionDelegate.didTapChoice(name: "Darth Vader")
        dismiss(animated: true, completion: nil)
        
    }
    @IBAction func rebelButtonTapped(_ sender: Any) {
        selectionDelegate.didTapChoice(name: "Luke Skywalker")
        dismiss(animated: true, completion: nil)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
