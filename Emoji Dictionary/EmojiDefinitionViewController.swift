//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Marco Grier on 8/26/17.
//  Copyright © 2017 Marco Grier. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    
    var emoji = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
        
        // ["🥝", "🥃", "🍿", "🥓", "🏈", "👟", "🍔", "🍱", "🍘"]
        
        if emoji == "🥝" {
            emojiDefinitionLabel.text = "Some food"
        }
        
        if emoji == "🥃" {
            emojiDefinitionLabel.text = "Cruise Drink"
        }
        
        if emoji == "🍿" {
            emojiDefinitionLabel.text = "Popcorn"
        }
        
        if emoji == "🥓" {
            emojiDefinitionLabel.text = "Bacon"
        }
    }

}
