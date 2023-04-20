//
//  ViewController.swift
//  IOS_Project_1_My_Story
//
//  Created by Dylan Ignacio on 4/15/23.
//

import UIKit

class ViewController: UIViewController {

    let backstory = Context(title: "Backstory", image: UIImage(named: "young-winston")!, text: "Raised by Dr. Harold Winston, Winston was a genetically engineered gorilla who was part of the Overwatch program. Growing up on a space station under Dr. Harold made Winston the brilliant scientist and upright figure he is today.")
    let ability = Context(title: "Abilities", image: UIImage(named: "primal-winston")!, text: "Winston plays the important role as the tank for his team of five. With his short ranged tesla cannon, he is able to leap into the enemy backline and pressure the enemies, while also protecting his team with his sphere barrier.")
    let fact = Context(title: "Fun Fact", image: UIImage(named: "winton")!, text: "Winston also known as 'Winton' among the fanbase was the result of genetic engineering. From a regular gorilla, Winston was able to become a brilliant scientist and engineer. A lot of this is also due to his admiration for his father like figure, Dr. Harold Winston who raised him. Winton likes peanut butter.")
    
    var contexts: [Context] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        contexts = [backstory, ability, fact]
    }

    @IBAction func didTapLabel(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.context = contexts[0]
            } else if tappedView.tag == 1 {
                detailViewController.context = contexts[1]
            } else if tappedView.tag == 2 {
                detailViewController.context = contexts[2]
            } else {
                print("no label was tapped, please check your selection.")
            }
        }
    }
    
}

