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
    
    @IBOutlet weak var recipeTitle: UILabel!
    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var totalTimeLabel: UILabel!
    @IBOutlet weak var shareAsLabel: UILabel!
    
    

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

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let margins = UIEdgeInsets(top: 0, left: 0, bottom: 25, right: 0)
        contentView.frame = contentView.frame.inset(by: margins)
    }
    
    
    func configure(recipe: Recipe) {
        recipeTitle.text = recipe.label
        ingredientsLabel.text = recipe.ingredients?.first?.text
//        totalTimeLabel.hashValue = recipe.totalDaily?
        shareAsLabel.text = recipe.shareAs
    }

}
