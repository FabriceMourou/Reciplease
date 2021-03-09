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
    @IBOutlet weak var recipeDetailHealthLabel: UILabel!
    @IBOutlet weak var recipeDetailImageView: UIImageView!
    
    
    @IBOutlet weak var recipeDetailIngredientsTableView: UITableView!

   
    
    
    @IBOutlet weak var getDirectionsButton: UIButton!
    
    @IBAction func tapOnGetDirectionsButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: (recipe?.url)!)! as URL, options: [:], completionHandler: nil)
        
    }
    
    
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        formatting()
        
        let url = URL(string: (recipe?.image)!)
        
        recipeDetailImageView.load(url: url!)
        
        recipeDetailTitleLabel.text = recipe?.label
        recipeDetailHealthLabel.text = recipe?.healthLabels?.first
        recipeDetailTimeLabel.text = recipe?.totalTime?.description
        
        recipeDetailIngredientsTableView.delegate = self
        recipeDetailIngredientsTableView.dataSource = self
        
        
    }

    private func formatting() {
        getDirectionsButton.layer.cornerRadius = 10
        recipeDetailImageView.layer.cornerRadius = 115
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
        cell.textLabel?.font = UIFont.init(name: "ACETONE", size: 20)
        cell.textLabel?.adjustsFontSizeToFitWidth = true
        cell.textLabel?.minimumScaleFactor = 0.5
        
        
       
        cell.textLabel?.text = ingredient
        
        return cell
        
    }
    
    
    
}
