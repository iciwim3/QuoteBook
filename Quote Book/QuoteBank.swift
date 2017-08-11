//
//  QuoteBank.swift
//  Quote Book
//
//  Created by Sain-R Edwards Jr. on 8/11/17.
//  Copyright © 2017 Appybuildmore. All rights reserved.
//

import Foundation

class QuoteBank {
    
    var quotes: [String] = ["Innovation distinguishes between a leader and a follower.", "You have a chance every single morning to make the change and be the person you want to be.", "It is hard to fail, but it is worse never to have tried to succeed."]
    
    var authors: [String] = ["Steve Jobs", "Brendon Burchard", "Pres. Teddy Roosevelt"]
    
    var authorImages: [String] = ["thumb_steve", "thumb_brendon", "thumb_theodore"]
    
    var currentQuoteIndex: Int = 0
    
    func getNextQuote() -> String {
        if currentQuoteIndex == (quotes.count - 1) {
            currentQuoteIndex = 0
        } else {
            currentQuoteIndex += 1
        }
        
        return quotes[currentQuoteIndex]
    }
    
    func getNextAuthorImage() -> String {
        return self.authorImages[currentQuoteIndex] // Will return the same index in the 'authorImages' array as the 'currentQuestionIndex' since everything is in order
    }
    
    func getNextAuthorName() -> String {
        return self.authors[currentQuoteIndex] // See above note
    }
    
}






