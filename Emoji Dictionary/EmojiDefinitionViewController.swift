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
        birthLabel.text = "Release Year: \(emoji.releaseDate)"
        categoryLabel.text = "Category: \(emoji.category)"

//        emojiLabel.text = emoji
//
//        // ["🥝", "🥃", "🍿", "🥓", "🏈", "👟", "🍔", "🍱", "🍘"]
//
//        if emoji == "🥝" {
//            emojiDefinitionLabel.text = "Some food"
//            birthLabel.text = "Birth Year: 2014"
//            categoryLabel.text = "Category: Food"
//        }
//
//        if emoji == "🥃" {
//            emojiDefinitionLabel.text = "Cruise Drink"
//            birthLabel.text = "Birth Year: 2012"
//            categoryLabel.text = "Category: Drink"
//        }
//
//        if emoji == "🍿" {
//            emojiDefinitionLabel.text = "Popcorn"
//            birthLabel.text = "Birth Year: 2011"
//            categoryLabel.text = "Category: Snack"
//        }
//
//        if emoji == "🥓" {
//            emojiDefinitionLabel.text = "Bacon"
//            birthLabel.text = "Birth Year: 2015"
//            categoryLabel.text = "Category: Food"
//        }
    }

}
