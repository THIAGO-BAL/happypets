//
//  PerfilViewController.swift
//  HappyPets
//
//  Created by Student on 1/19/17.
//  Copyright © 2017 thiago-Student. All rights reserved.
//

import UIKit

class PerfilViewController: UIViewController {

   
    @IBAction func sair(_ sender: Any) {
        logout()
    }
    
    
    func logout () {
        self.tabBarController?.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
