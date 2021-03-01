//
//  RecipeDetailTableViewCell.swift
//  Reciplease
//
//  Created by Fabrice Mourou on 18/02/2021.
//

import UIKit

class RecipeDetailTableViewCell: UITableViewCell {
    
//    static let identifier = "recipeDetailTableViewCell"
    
    
    @IBOutlet weak var recipeDetailView: UIView!
    
    @IBOutlet weak var recipeDetailImageView: UIImageView!
    
    @IBOutlet weak var recipeDetailTitleLabel: UILabel!
    
    @IBOutlet weak var recipeDetailTimeLabel: UILabel!
    @IBOutlet weak var recipeDetailLikeLabel: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        recipeDetailImageView.layer.cornerRadius = 100
        recipeDetailImageView.layer.borderColor = UIColor.lightGray.cgColor
        recipeDetailImageView.layer.borderWidth = 2
        
        recipeDetailView.layer.borderWidth = 0.5
        recipeDetailView.layer.borderColor = UIColor.lightGray.cgColor
        recipeDetailView.layer.cornerRadius = 20
        
        
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

     
    }
    
    func configure(recipe: Recipe) {
        recipeDetailTitleLabel.text = recipe.label
        recipeDetailLikeLabel.text = recipe.shareAs
        recipeDetailTimeLabel.text = recipe.totalDaily?.description
    }

}
