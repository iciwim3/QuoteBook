//
//  ViewController.swift
//  Quote Book
//
//  Created by Sain-R Edwards Jr. on 8/10/17.
//  Copyright © 2017 Appybuildmore. All rights reserved.
//

import UIKit

class QuoteBookViewController: UIViewController {
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorImage: UIImageView!
    @IBOutlet weak var authorNameLabel: UILabel!
    
    var quoteBank = QuoteBank()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quoteLabel.text = "Tap the button for inspiration!"
        authorImage.image = UIImage(named: quoteBank.authorImages[0])
        authorNameLabel.text = quoteBank.authors[0]
    }

    @IBAction func inspireMeButtonTapped(_ sender: Any) {
        if authorImage.image == UIImage(named: quoteBank.authorImages[0]) && authorNameLabel.text == quoteBank.authors[0] {
            quoteLabel.text = quoteBank.quotes[0]
            quoteBank.currentQuoteIndex += 1
        } else {
            updateQuote()
        }
        
        updateQuote()
    }
    
    func updateQuote() {
        let nextQuote = quoteBank.getNextQuote()
        let quoteAuthorImage = quoteBank.getNextAuthorImage()
        let authorNameText = quoteBank.getNextAuthorName()
        
        quoteLabel.text = nextQuote
        authorImage.image = UIImage(named: quoteAuthorImage)
        authorNameLabel.text = authorNameText
    }
    

}

