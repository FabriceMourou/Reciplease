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
    @IBOutlet weak var detailRecipeButton: UIButton!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        recipeImageView.layer.cornerRadius = 20
        detailRecipeButton.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
