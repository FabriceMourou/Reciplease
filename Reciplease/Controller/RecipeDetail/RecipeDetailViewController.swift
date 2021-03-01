//
//  RecipeDetailViewController.swift
//  Reciplease
//
//  Created by Fabrice Mourou on 03/02/2021.
//

import UIKit

class RecipeDetailViewController: UIViewController {
    
    var recipes: [Recipe] = []
    var ingredients: [Ingredient] = []
    
    
    
    @IBOutlet weak var getDirectionsButton: UIButton!
    @IBOutlet weak var recipeDetailTableView: UITableView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundShapes()
        recipeDetailTableView.delegate = self
        recipeDetailTableView.dataSource = self
        
        
    }

    private func roundShapes() {
        getDirectionsButton.layer.cornerRadius = 10
    }
    
    
    
    
}

extension RecipeDetailViewController: UITableViewDelegate {
    
    func recipeDetailTableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension RecipeDetailViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
        
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let recipe = recipes[indexPath.row]
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeDetailTableViewCell") as! RecipeDetailTableViewCell
        
        cell.configure(recipe: recipe)
        
        
        return cell
        
        
        
        
    }
    
    
    
}
