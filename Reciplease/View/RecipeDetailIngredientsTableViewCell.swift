import UIKit

class RecipeDetailIngredientsTableViewCell: UITableViewCell {
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let margins = UIEdgeInsets(top: 0, left: 0, bottom: 25, right: 0)
        contentView.frame = contentView.frame.inset(by: margins)
    }

}
