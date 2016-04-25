import Foundation

class Conversations {
  class Conversation {
    let contact: String
    let messages: [String]
    
    init(with: String, content: [String]) {
      self.contact = with;
      self.messages = content;
    }
  }
  
  let conversations = [
    Conversation(with: "Harry Tasker", content: [
      "Do you know what this is?",
      "I know what this is...",
      "This is an espresso machine.",
      "No, no wait. It's a snow cone maker.",
      "Is it a water heater?",
      ]),
    Conversation(with: "Jack Slater", content: [
      "You think you are funny, don't you?",
      "I know I am. I'm the famous comedian Arnold Braunschweiger.",
      "Schwarzenegger!",
      "Gesundheit.",
      ]),
    Conversation(with: "Dutch", content: [
      "Who's our backup?",
      "No such thing, ol' buddy. This is a one-way ticket. Once we cross that border, we're on our own.",
      "This is getting better by the minute.",
      ]),
    ]
}