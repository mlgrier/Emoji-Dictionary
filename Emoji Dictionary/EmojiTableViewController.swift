//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Marco Grier on 8/26/17.
//  Copyright © 2017 Marco Grier. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis: [Emoji] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojis = createEmojis()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        let emoji = emojis[indexPath.row]
        
        cell.textLabel?.text = "\(emoji.theEmoji) - \(emoji.category)"

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "ourSegue", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let emojiDefVC = segue.destination as! EmojiDefinitionViewController
        emojiDefVC.emoji = sender as! Emoji
    }
    
    func createEmojis() -> [Emoji] {
        let kiwi = Emoji()
        kiwi.theEmoji = "🥝"
        kiwi.def = "Some Food"
        kiwi.releaseDate = 2011
        kiwi.category = "Food"
        
        let pop = Emoji()
        pop.theEmoji = "🍿"
        pop.def = "Popcorn"
        pop.releaseDate = 2014
        pop.category = "Snack"
        
        return [kiwi, pop]
    }

}
