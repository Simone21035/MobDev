import 'dart:io';

void main(List<String> args) {
  print("Creating new Deck");
  List<card> deck = newDeck();
  List<card> sdeck;
  print("Current new Deck");
  printCards(deck);
  print("Shuffling Deck");
  shuffleDeck(deck);
  print("Output of Shuffled Deck");
  printCards(deck);
  print("Enter suit to sort cards in deck");
  dynamic suit = stdin.readLineSync();
  sdeck = cardsWithSuit(deck, suit);
  printCards(sdeck);
}

class card {
  String name;
  String suit;
  card({required this.name, required this.suit});
}

List<card> newDeck() {
  List<card> ndeck = [
    card(name: 'Ace', suit: 'Diamonds'),
    card(name: 'Two', suit: 'Diamonds'),
    card(name: 'Three', suit: 'Diamonds'),
    card(name: 'Four', suit: 'Diamonds'),
    card(name: 'Five', suit: 'Diamonds'),
    card(name: 'Six', suit: 'Diamonds'),
    card(name: 'Seven', suit: 'Diamonds'),
    card(name: 'Eight', suit: 'Diamonds'),
    card(name: 'Nine', suit: 'Diamonds'),
    card(name: 'Ten', suit: 'Diamonds'),
    card(name: 'Jack', suit: 'Diamonds'),
    card(name: 'Queen', suit: 'Diamonds'),
    card(name: 'King', suit: 'Diamonds'),
    card(name: 'Ace', suit: 'Hearts'),
    card(name: 'Two', suit: 'Hearts'),
    card(name: 'Three', suit: 'Hearts'),
    card(name: 'Four', suit: 'Hearts'),
    card(name: 'Five', suit: 'Hearts'),
    card(name: 'Six', suit: 'Hearts'),
    card(name: 'Seven', suit: 'Hearts'),
    card(name: 'Eight', suit: 'Hearts'),
    card(name: 'Nine', suit: 'Hearts'),
    card(name: 'Ten', suit: 'Hearts'),
    card(name: 'Jack', suit: 'Hearts'),
    card(name: 'Queen', suit: 'Hearts'),
    card(name: 'King', suit: 'Hearts'),
    card(name: 'Ace', suit: 'Clubs'),
    card(name: 'Two', suit: 'Clubs'),
    card(name: 'Three', suit: 'Clubs'),
    card(name: 'Four', suit: 'Clubs'),
    card(name: 'Five', suit: 'Clubs'),
    card(name: 'Six', suit: 'Clubs'),
    card(name: 'Seven', suit: 'Clubs'),
    card(name: 'Eight', suit: 'Clubs'),
    card(name: 'Nine', suit: 'Clubs'),
    card(name: 'Ten', suit: 'Clubs'),
    card(name: 'Jack', suit: 'Clubs'),
    card(name: 'Queen', suit: 'Clubs'),
    card(name: 'King', suit: 'Clubs'),
    card(name: 'Ace', suit: 'Spades'),
    card(name: 'Two', suit: 'Spades'),
    card(name: 'Three', suit: 'Spades'),
    card(name: 'Four', suit: 'Spades'),
    card(name: 'Five', suit: 'Spades'),
    card(name: 'Six', suit: 'Spades'),
    card(name: 'Seven', suit: 'Spades'),
    card(name: 'Eight', suit: 'Spades'),
    card(name: 'Nine', suit: 'Spades'),
    card(name: 'Ten', suit: 'Spades'),
    card(name: 'Jack', suit: 'Spades'),
    card(name: 'Queen', suit: 'Spades'),
    card(name: 'King', suit: 'Spades'),
  ];
  return ndeck;
}

void shuffleDeck(List d) {
  d.shuffle();
}

void printCards(List<card> d) {
  for (var i = 0; i < d.length; i++) {
    print("${d[i].name} of ${d[i].suit}");
  }
}

List<card> cardsWithSuit(List<card> d, String word) {
  List<card> ndeck = [];
  for (var i = 0; i < d.length; i++) {
    if (d[i].suit == word) {
      ndeck.add(d[i]);
    }
  }
  return ndeck;
}

void cardPrint(card c) {
  print('${c.name} of ${c.suit}');
}
