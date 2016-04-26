import UIKit

class ConversationsTableViewController: UITableViewController {
  let cellIdentifier = "conversation"
  
  let data = Conversations()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    //    tableView.registerClass(ConversationTableViewCell.classForCoder(), forCellReuseIdentifier: cellIdentifier)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  // MARK: - Table view data source
  
  override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data.conversations.count
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = self.tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! ConversationTableViewCell
    let contact = data.conversations[indexPath.row].contact

    cell.partner.text = contact.name
    cell.profilePicture.image = UIImage(named: contact.image)
    
    return cell
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "ConversationToChatSegue" {
      if let indexPath = tableView.indexPathForSelectedRow {
        let messages = data.conversations[indexPath.row].messages
        let targetController = segue.destinationViewController as! ChatTableViewController;
        
        targetController.messages = messages
      }
    }
  }
}
