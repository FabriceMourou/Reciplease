import UIKit

class RecipesListViewController: UIViewController {
    
    var formattedRecipeData: FormattedRecipeData?
    
    
//    var recipes: [Recipe] = [
//        Recipe(uri: nil, label: "Salad", image: nil, source: nil, url: nil, shareAs: "377", yield: nil, dietLabels: nil, healthLabels: nil, cautions: nil, ingredientLines: nil, ingredients: nil, calories: nil, totalWeight: nil, totalTime: nil, totalNutrients: nil, totalDaily: nil, digest: nil)
//    ]
    
    var recipes: [Recipe] = []
    
//    var ingredients: [Ingredient] = [
//        Ingredient(text: "bread", weight: nil, image: nil)
//    ]
//
    
 
    @IBOutlet weak var recipesTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        recipesTableView.delegate = self
        recipesTableView.dataSource = self

        
    }
    
    

}

extension RecipesListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
    }
}

extension RecipesListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let recipe = recipes[indexPath.row]
        //let ingredient = ingredients[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell") as! RecipeTableViewCell
        
        

        cell.configure(recipe: recipe)
        
        return cell
    }
    
   
   
    
    
    
    
  
    
 
    
    
}
