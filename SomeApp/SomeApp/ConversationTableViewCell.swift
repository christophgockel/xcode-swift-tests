import UIKit

class ConversationTableViewCell: UITableViewCell {
  @IBOutlet weak var profilePicture: UIImageView!
  @IBOutlet weak var partner: UILabel!
  
  override func prepareForInterfaceBuilder() {
    partner.text = "The Contact Name 1"
  }
}
