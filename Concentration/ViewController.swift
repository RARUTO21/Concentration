//
//  ViewController.swift
//  Concentration
//
//  Created by Anthony Leandro on 10/7/18.
//  Copyright © 2018 Anthony Leandro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cardButtons: [UIButton]!
    @IBOutlet weak var attemptsLabel: UILabel!
    var attempts = 0
    var shuffled = [String]()
    var emojiMap: [Int: String] = [:]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //print(emojis)
        print(shuffleEmojis())
        setCardsMapping()
    }
    
    func shuffleEmojis() -> [String]{
        var emojis = ["👻","🎃","🧟‍♀️","🕸","🦇","🌕","🔮","⚰️","🃏","🐸","👻","🎃","🧟‍♀️","🕸","🦇","🌕","🔮","⚰️","🃏","🐸","👻","🎃","🧟‍♀️","🕸","🦇","🌕","🔮","⚰️","🃏","🐸","👻","🎃","🧟‍♀️","🕸","🦇","🌕","🔮","⚰️","🃏","🐸"]
        shuffled = []
        for _ in 0..<emojis.count{
            let rand = Int(arc4random_uniform(UInt32(emojis.count)))
            shuffled.append(emojis[rand])
            emojis.remove(at: rand)
        }
        return shuffled
    }
    
    func setCardsMapping(){
        for index in 0..<cardButtons.count{
            emojiMap[index] = shuffled[index]
            print("Inserted \(shuffled[index]) at pos \(index)")
        }
        print(emojiMap)
    }
    
    
    @IBAction func touchCard(_ sender: UIButton) {
        attempts += 1
        
        let indexOfButton = cardButtons.index(of: sender)
        print("Index of button is: \(indexOfButton!)")
        /*let alert = UIAlertController(title: "Mensaje", message: "Este es un mensaje", preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
            print("Yes")
        }))
        
        alert.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
            print("No")
        }))
    
        self.present(alert, animated: true, completion: nil) */
        print("Emoji map at \(indexOfButton!) is \(emojiMap[indexOfButton!]))")
        sender.setTitle(emojiMap[indexOfButton!], for: UIControlState.normal)
        sender.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        
        //attemptsLabel.setValue("Intentos fallidos: (\(attempts)/5)", forKey: )
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

