//
//  RecipeDetailViewController.swift
//  Reciplease
//
//  Created by Fabrice Mourou on 03/02/2021.
//

import UIKit

class RecipeDetailViewController: UIViewController {
    
    var recipes: [Recipe] = [
        Recipe(uri: nil, label: "Salad", image: nil, source: nil, url: nil, shareAs: nil, yield: nil, dietLabels: nil, healthLabels: nil, cautions: nil, ingredientLines: nil, ingredients: nil, calories: nil, totalWeight: nil, totalTime: nil, totalNutrients: nil, totalDaily: nil, digest: nil)
    ]

    
    @IBOutlet weak var recipeImageDetail: UIImageView!
    @IBOutlet weak var getDirectionsButton: UIButton!
    @IBOutlet weak var recipeDetailTableView: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundShapes()
        recipeDetailTableView.delegate = self
        recipeDetailTableView.dataSource = self
        
    }
    
    private func roundShapes() {
        recipeImageDetail.layer.cornerRadius = 20
        recipeImageDetail.layer.borderWidth = 2
        recipeImageDetail.layer.borderColor = UIColor.lightGray.cgColor
        getDirectionsButton.layer.cornerRadius = 10
    }

}

extension RecipeDetailViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension RecipeDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipeDetailCell") as! RecipeDetailTableViewCell
        
        let recipe = recipes[indexPath.row]
        
        cell.configure(recipe: recipe)
        
        return cell
     
    }
    
    
    
}
