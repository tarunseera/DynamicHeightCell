import UIKit
class MyCustomCell: UITableViewCell {
    
    var myCellLabel = UIMongolSingleLineLabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        self.myCellLabel.translatesAutoresizingMaskIntoConstraints = false
        self.myCellLabel.centerText = false
        self.myCellLabel.backgroundColor = UIColor.yellowColor()
        self.addSubview(myCellLabel)
            
        let topConstraint = NSLayoutConstraint(item: myCellLabel, attribute: .Top, relatedBy: .Equal, toItem: self, attribute: .Top, multiplier: 1, constant: 0)
        let bottomConstraint = NSLayoutConstraint(item: myCellLabel, attribute: .Bottom, relatedBy: .Equal, toItem: self, attribute: .Bottom, multiplier: 1, constant: 0)
        let centerConstraint = NSLayoutConstraint(item: myCellLabel, attribute: .CenterX, relatedBy: .Equal, toItem: self, attribute: .CenterX, multiplier: 1, constant: 0)
        self.addConstraints([centerConstraint, topConstraint, bottomConstraint])
        
    }
    
    override internal class func requiresConstraintBasedLayout() -> Bool {
        return true
    }
}