//
//  RecipeDetailViewController.swift
//  Reciplease
//
//  Created by Fabrice Mourou on 03/02/2021.
//

import UIKit

class RecipeDetailViewController: UIViewController {
    
    var recipe: Recipe?

    
    
    @IBOutlet weak var recipeDetailTitleLabel: UILabel!
    @IBOutlet weak var recipeDetailTimeLabel: UILabel!
    @IBOutlet weak var recipeDetailLikeLabel: UILabel!
    @IBOutlet weak var recipeDetailImageView: UIImageView!
    
    
    @IBOutlet weak var recipeDetailIngredientsTableView: UITableView!

   
    
    
    @IBOutlet weak var getDirectionsButton: UIButton!
    
    
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundShapes()
        
        
//        recipeDetailImageCell.layer.borderWidth = 0.5
//        recipeDetailImageCell.layer.borderColor = UIColor.init(cgColor: #colorLiteral(red: 0.3154009879, green: 0.05233172327, blue: 0.1719847918, alpha: 1)).cgColor
//        recipeDetailImageCell.layer.cornerRadius = 10
       
        
        
        recipeDetailTitleLabel.text = recipe?.label
//        recipeDetailLikeLabel.text = recipe?.shareAs
        recipeDetailTimeLabel.text = recipe?.totalTime?.description
        
        recipeDetailIngredientsTableView.delegate = self
        recipeDetailIngredientsTableView.dataSource = self
        
        
    }

    private func roundShapes() {
        getDirectionsButton.layer.cornerRadius = 10
        recipeDetailImageView.layer.cornerRadius = 120
        recipeDetailImageView.layer.borderWidth = 1
        recipeDetailImageView.layer.borderColor = UIColor.lightGray.cgColor
        recipeDetailIngredientsTableView.layer.cornerRadius = 10
        recipeDetailIngredientsTableView.layer.borderWidth = 0.5
        recipeDetailIngredientsTableView.layer.borderColor = UIColor.lightGray.cgColor
    }
    
   
    
    
    
    
}

extension RecipeDetailViewController: UITableViewDelegate {
    
    func recipeDetailTableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension RecipeDetailViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return recipe?.ingredientLines!.count ?? 0
            
            
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let ingredient = recipe?.ingredientLines?[indexPath.row] else {
            return UITableViewCell()
        }

        let cell = tableView.dequeueReusableCell(withIdentifier: "recipeDetailIngredientsTableViewCell")!
        
        cell.textLabel?.textColor = UIColor .white
        cell.textLabel?.font = UIFont.init(name: "ACETONE", size: 23)
      
        
        
       
        cell.textLabel?.text = ingredient
        
        return cell
        
    }
    
    
    
}
