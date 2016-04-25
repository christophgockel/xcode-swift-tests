import UIKit

class ChatMessageTableViewCell: UITableViewCell {
  @IBOutlet weak var content: UILabel!

  override func prepareForInterfaceBuilder() {
    content.text = "Chat message..."
  }
}
