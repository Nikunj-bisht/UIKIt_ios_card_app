//
//  CardsViewController.swift
//  UIKit_intro
//
//  Created by Nikunj   on 19/05/24.
//

import UIKit

class CardsViewController: UIViewController {
    
    @IBOutlet var cardImageView: UIImageView!
    var timer:Timer!;
    override func viewDidLoad() {
       
         super.viewDidLoad()
         startTimer()
        // Do any additional setup after loading the view.
    }
    
    func startTimer(){
      timer = Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(selectRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func selectRandomImage(){
        cardImageView.image = MyImages.allValues.randomElement() ?? UIImage(named: "2C");
    }
    
    @IBAction func stopAction(_ sender: UIButton) {
    }
    
    
    @IBAction func changeCard(_ sender: Any) {
        timer.invalidate();


    }
    
    @IBAction func showRulesModal(_ sender: UIButton) {
        performSegue(withIdentifier: "goToRules", sender: nil)
    }
    
    @IBAction func restartShuffle(_ sender: UIButton) {
        timer.invalidate();
        startTimer();
    }
    
}
