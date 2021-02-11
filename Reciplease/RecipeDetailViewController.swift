//
//  RecipeDetailViewController.swift
//  Reciplease
//
//  Created by Fabrice Mourou on 03/02/2021.
//

import UIKit

class RecipeDetailViewController: UIViewController {

    
    @IBOutlet weak var recipeImageDetail: UIImageView!
    @IBOutlet weak var getDirectionsButton: UIButton!
    @IBOutlet weak var ingredientsTextView: UITextView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        recipeImageDetail.layer.cornerRadius = 20
        recipeImageDetail.layer.borderWidth = 2
        recipeImageDetail.layer.borderColor = UIColor.lightGray.cgColor
        getDirectionsButton.layer.cornerRadius = 10
        ingredientsTextView.layer.cornerRadius = 20
        
    }
    

   


}
