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
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    var emoji = Emoji()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.theEmoji
        emojiDefinitionLabel.text = emoji.def
        birthLabel.text = "Release Date: \(emoji.releaseDate)"
        categoryLabel.text = "Category: \(emoji.category)"


//        // ["🥝", "🥃", "🍿", "🥓", "🏈", "👟", "🍔", "🍱", "🍘"]


    }

}
