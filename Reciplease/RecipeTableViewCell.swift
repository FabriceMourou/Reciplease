//
//  RecipeTableViewCell.swift
//  Reciplease
//
//  Created by Fabrice Mourou on 04/02/2021.
//

import UIKit

class RecipeTableViewCell: UITableViewCell {
    
    

    @IBOutlet weak var recipeView: UIView!
    @IBOutlet weak var recipeImageView: UIImageView!
 
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        recipeImageView.layer.cornerRadius = 20
        recipeImageView.layer.borderColor = UIColor.lightGray.cgColor
        recipeImageView.layer.borderWidth = 2
        recipeView.layer.borderWidth = 0.5
        recipeView.layer.borderColor = UIColor.lightGray.cgColor
        recipeView.layer.cornerRadius = 20
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
