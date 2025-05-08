//
//  main.swift
//  CardGame
//
//  Created by user942322 on 5/8/25.
//

import Foundation

// Define enum for Rank
enum Rank: String, CaseIterable {
    case ace = "Ace"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case ten = "10"
    case jack = "Jack"
    case queen = "Queen"
    case king = "King"
}

// Define enum for Suit
enum Suit: String, CaseIterable {
    case clubs = "Clubs"
    case hearts = "Hearts"
    case diamonds = "Diamonds"
    case spades = "Spades"
}

// Define a struct for a Card
struct Card: CustomStringConvertible {
    let rank: Rank
    let suit: Suit
    
    var description: String {
        return "\(rank.rawValue) \(suit.rawValue)"
    }
}

// Create an array with all 52 cards
var deck: [Card] = []

for suit in Suit.allCases {
    for rank in Rank.allCases {
        deck.append(Card(rank: rank, suit: suit))
    }
}

// Randomly select 5 unique cards
let hand = deck.shuffled().prefix(5)

// Print the selected cards
print("Your hand:")
for card in hand {
    print(card)
}


