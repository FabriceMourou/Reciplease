//
//  IngredientTableViewCell.swift
//  Reciplease
//
//  Created by Fabrice Mourou on 18/02/2021.
//

import UIKit

class IngredientTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var ingredientView: UIView!
    @IBOutlet weak var ingredientLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        ingredientView.layer.borderWidth = 0.5
        ingredientView.layer.borderColor = UIColor.init(cgColor: #colorLiteral(red: 0.3154009879, green: 0.05233172327, blue: 0.1719847918, alpha: 1)).cgColor
        ingredientView.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
