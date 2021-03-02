import UIKit

class RecipesListViewController: UIViewController {
    
  
    
    
    var recipes: [Recipe] = []
    

    @IBAction func didTapOnRecipe() {
    }
    
 
    @IBOutlet weak var recipesTableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        recipesTableView.delegate = self
        recipesTableView.dataSource = self

        
    }
    
    
    let alertManager = AlertManager()
    let recipeManager = RecipeManager()
    
    
    
    var recipe: [String] = [] {
        didSet {
            recipesTableView.reloadData()
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        
        if
            let recipeDetailViewController = segue.destination as? RecipeDetailViewController,
            let recipe = sender as? Recipe
            {
            recipeDetailViewController.recipe = recipe
            
        }
    }
    
    
    
    

}

extension RecipesListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let recipe = recipes[indexPath.row]
        performSegue(withIdentifier: "GoToRecipeDetailSegue", sender: recipe)
    }
}

extension RecipesListViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let recipe = recipes[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell") as! RecipeTableViewCell
        
        cell.configure(recipe: recipe)
        
        return cell
    }

    
}
