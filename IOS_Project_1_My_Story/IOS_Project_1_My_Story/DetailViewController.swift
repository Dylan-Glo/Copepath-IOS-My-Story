//
//  DetailViewController.swift
//  IOS_Project_1_My_Story
//
//  Created by Dylan Ignacio on 4/15/23.
//

import UIKit

class DetailViewController: UIViewController {
    // Property
    var context: Context?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = context?.title
        
        // Do any additional setup after loading the view.
        if let context = context {
            print(context.text)
        }
        
        if let context = context {
            contextImageView.image = context.image
            contextTextView.text = context.text
        }
    }
    
    // IBOutlets
    @IBOutlet weak var contextImageView: UIImageView!
    @IBOutlet weak var contextTextView: UITextView!
    
}
