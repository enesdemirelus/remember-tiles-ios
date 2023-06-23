//
//  ViewController.swift
//  rememberTiles2
//
//  Created by Enes Demirel on 1/13/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    
    @IBOutlet weak var timeLabel: UILabel!
    var buttonArray = [UIButton]()
    var randomNumber1 = 0
    var randomNumber2 = 0
    var highScore = 0
    var randomNumber3 = 0
    var timer = Timer()
    @IBOutlet weak var highScoreLabel: UILabel!
    var counter = 0.3
    var score = 0
    @IBOutlet weak var scoreLabel: UILabel!
    var boolArray = [Bool]()

    @IBOutlet weak var startGameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light

        
        scoreLabel.text = "Current Score: \(score)"
        boolArray = [false,false,false,false,false,false,false,false,false]
        timeLabel.text = "Time: \(counter)"
        buttonArray = [button1,button2,button3,button4,button5,button6,button7,button8,button9]
        
        let storedHighScore = UserDefaults.standard.object(forKey: "highScore")
        
        if storedHighScore == nil{
            
            highScore = 0
            highScoreLabel.text = "High Score: \(highScore)"
            
        } else {
            highScore = storedHighScore as! Int
            if let userHighScore = storedHighScore as? Int {
                highScoreLabel.text = "High Score: \(userHighScore)"
            }
        }
        
        
        
        for i in 0...8 {
            buttonArray[i].layer.borderWidth = 2
            buttonArray[i].layer.borderColor = UIColor.black.cgColor
            buttonArray[i].layer.cornerRadius = 0
            buttonArray[i].isEnabled = false
            
            
        }
        
        
    }

    @IBAction func whenClicked(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(decreaseTime), userInfo: nil, repeats: true)
        startGameButton.isEnabled = false
        randomNumber1 = Int.random(in: 0...8)
        randomNumber2 = Int.random(in: 0...8)
        randomNumber3 = Int.random(in: 0...8)

        
        buttonArray[randomNumber1].backgroundColor = UIColor.cyan
        buttonArray[randomNumber2].backgroundColor = UIColor.cyan
        buttonArray[randomNumber3].backgroundColor = UIColor.cyan
    }
    
    
    
    
    @IBAction func isOneClicked(_ sender: Any) {
        
        if boolArray[0] == true {
            boolArray[0] = false
        } else {
            boolArray[0] = true
        }
        
        if button1.backgroundColor == UIColor.white {
            button1.backgroundColor = UIColor.cyan
        } else {
            button1.backgroundColor = UIColor.white
        }
        
        print(boolArray[0])
        
        
    }
    
    @IBAction func isTwoClicked(_ sender: Any) {
        if boolArray[1] == true {
            boolArray[1] = false
        } else {
            boolArray[1] = true
        }
        if button2.backgroundColor == UIColor.white {
            button2.backgroundColor = UIColor.cyan
        } else {
            button2.backgroundColor = UIColor.white
        }
        

    }
    
    @IBAction func isThreeClicked(_ sender: Any) {
        
        if boolArray[2] == true {
            boolArray[2] = false
        } else {
            boolArray[2] = true
        }
        
        
        
        
        if button3.backgroundColor == UIColor.white {
            button3.backgroundColor = UIColor.cyan
        } else {
            button3.backgroundColor = UIColor.white
        }


    }
    
    @IBAction func isFourClicked(_ sender: Any) {
        
        if boolArray[3] == true {
            boolArray[3] = false
        } else {
            boolArray[3] = true
        }
        if button4.backgroundColor == UIColor.white {
            button4.backgroundColor = UIColor.cyan
        } else {
            button4.backgroundColor = UIColor.white
        }


    }
    
    @IBAction func isFiveClicked(_ sender: Any) {
        
        if boolArray[4] == true {
            boolArray[4] = false
        } else {
            boolArray[4] = true
        }
        if button5.backgroundColor == UIColor.white {
            button5.backgroundColor = UIColor.cyan
        } else {
            button5.backgroundColor = UIColor.white
        }


    }
    
    @IBAction func isSixClicked(_ sender: Any) {
        if boolArray[5] == true {
            boolArray[5] = false
        } else {
            boolArray[5] = true
        }
        if button6.backgroundColor == UIColor.white {
            button6.backgroundColor = UIColor.cyan
        } else {
            button6.backgroundColor = UIColor.white
        }


    }
    
    @IBAction func isSevenClicked(_ sender: Any) {
        if boolArray[6] == true {
            boolArray[6] = false
        } else {
            boolArray[6] = true
        }
        if button7.backgroundColor == UIColor.white {
            button7.backgroundColor = UIColor.cyan
        } else {
            button7.backgroundColor = UIColor.white
        }


    }
    
    @IBAction func isEightClicked(_ sender: Any) {
        if boolArray[7] == true {
            boolArray[7] = false
        } else {
            boolArray[7] = true
        }
        if button8.backgroundColor == UIColor.white {
            button8.backgroundColor = UIColor.cyan
        } else {
            button8.backgroundColor = UIColor.white
        }


    }
    
    @IBAction func isNineClicked(_ sender: Any) {
        if boolArray[8] == true {
            boolArray[8] = false
        } else {
            boolArray[8] = true
        }
        if button9.backgroundColor == UIColor.white {
            button9.backgroundColor = UIColor.cyan
        } else {
            button9.backgroundColor = UIColor.white
        }


    }
    
    @objc func decreaseTime() {
        counter -= 0.3
        timeLabel.text = "Time: \(counter) "
        
        boolArray[randomNumber1] = true
        boolArray[randomNumber2] = true
        boolArray[randomNumber3] = true
        
        if counter == 0 {
            print(boolArray[0])

            for i in 0...8 {
                buttonArray[i].isEnabled = true
                
                
            }
            
            timer.invalidate()
            buttonArray[randomNumber1].backgroundColor = UIColor.white
            buttonArray[randomNumber2].backgroundColor = UIColor.white
            buttonArray[randomNumber3].backgroundColor = UIColor.white
            

            }
        
        }
    
    @IBAction func resultClicked(_ sender: Any) {
        if boolArray[randomNumber1] == false && boolArray[randomNumber2] == false && boolArray[randomNumber3] == false {
            
            score += 1
            scoreLabel.text = "Current Score: \(score)"
            
            if score > highScore {
                highScoreLabel.text = "High Score: \(score)"
                UserDefaults.standard.set(score, forKey: "highScore")
            }
            
            
            let alert = UIAlertController(title: "Cong it's correct", message: "", preferredStyle: UIAlertController.Style.alert)
                    let okButton = UIAlertAction(title: "Next Level", style: UIAlertAction.Style.default) { UIAlertAction in
                        


                        self.counter = 0.3
                        
                        self.timeLabel.text = "Time: \(self.counter) "
                        self.startGameButton.isEnabled = false
                        self.randomNumber1 = Int.random(in: 0...8)
                        self.randomNumber2 = Int.random(in: 0...8)
                        self.randomNumber3 = Int.random(in: 0...8)
                        
                        for i in 0...8 {
                            self.buttonArray[i].backgroundColor = UIColor.white
                            
                            
                        }

                        
                        self.buttonArray[self.randomNumber1].backgroundColor = UIColor.cyan
                        self.buttonArray[self.randomNumber2].backgroundColor = UIColor.cyan
                        self.buttonArray[self.randomNumber3].backgroundColor = UIColor.cyan
                        
                        self.timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.decreaseTime), userInfo: nil, repeats: true)
                        
                        
                        
                        
                    }
                    alert.addAction(okButton)
                    self.present(alert, animated: true)
        } else {
            let alert = UIAlertController(title: "False!!!!", message: "", preferredStyle: UIAlertController.Style.alert)
                    let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
                        
                        for i in 0...8 {
                            self.buttonArray[i].backgroundColor = UIColor.white
                            
                            
                        }
                        self.counter = 0.3
                        self.timeLabel.text = "Time: \(self.counter) "
                        
                        self.timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.decreaseTime), userInfo: nil, repeats: true)
                        
                        
                        
                        
                    }
                    alert.addAction(okButton)
                    self.present(alert, animated: true)
            
            
        }
    }
    
    
}

