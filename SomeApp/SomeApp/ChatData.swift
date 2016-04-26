import Foundation

class Conversations {
  struct Contact {
    let name: String
    let image: String
  }

  class Conversation {
    let contact: Contact
    let messages: [String]
    
    init(with: Contact, content: [String]) {
      self.contact = with;
      self.messages = content;
    }
  }
  
  let conversations = [
    Conversation(with: Contact(name: "Harry Tasker", image: "harry.png"), content: [
      "Do you know what this is?",
      "I know what this is...",
      "This is an espresso machine.",
      "No, no wait. It's a snow cone maker.",
      "Is it a water heater?",
      ]),
    Conversation(with: Contact(name: "Jack Slater", image: "jack.png"), content: [
      "You think you are funny, don't you?",
      "I know I am. I'm the famous comedian Arnold Braunschweiger.",
      "Schwarzenegger!",
      "Gesundheit.",
      ]),
    Conversation(with: Contact(name: "Dutch", image: "dutch.png"), content: [
      "Who's our backup?",
      "No such thing, ol' buddy. This is a one-way ticket. Once we cross that border, we're on our own.",
      "This is getting better by the minute.",
      ]),
    ]
}