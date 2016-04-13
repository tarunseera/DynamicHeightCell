import UIKit
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let myStrings: [String] = ["a", "bbbbbbb", "cccc", "dddddddddd", "ee"]
    let cellReuseIdentifier = "cell"
    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Suggestion bar
        tableView.frame = CGRect(x: 0, y: 20, width: view.bounds.width, height: view.bounds.height)
        tableView.registerClass(MyCustomCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 44.0
        tableView.rowHeight = UITableViewAutomaticDimension
        view.addSubview(tableView)
        tableView.reloadData()
        tableView.setNeedsDisplay()
    }
    
    // number of rows in table view
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myStrings.count
    }
    
    // create a cell for each table view row
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell:MyCustomCell = self.tableView.dequeueReusableCellWithIdentifier(cellReuseIdentifier) as! MyCustomCell
        cell.myCellLabel.text = self.myStrings[indexPath.row]
        cell.myCellLabel.clipsToBounds=true
        return cell
    }
    
    // method to run when table view cell is tapped
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }
}