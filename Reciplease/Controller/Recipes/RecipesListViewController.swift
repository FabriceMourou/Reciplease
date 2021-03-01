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
    
    
    private func displayRecipeDetail(recipes: String?) {
        
        recipeManager.fetchRecipesFrom(ingredients: recipe) { [weak self] (result) in
            
            DispatchQueue.main.async {
                switch result {
                
                case .failure:
                    guard let self = self else { return }
                    self.alertManager.presentAlert(from: self, message: "Failed to get recipe data")

                
                case .success(let recipes):
                   
                    self?.performSegue(withIdentifier: "GoToRecipeDetailSegue", sender: recipes)
                }
            }
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        
        if
            let recipeDetailViewController = segue.destination as? RecipeDetailViewController,
            let recipes = sender as? [Recipe]
            {
            recipeDetailViewController.recipes = recipes
            
        }
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell") as! RecipeTableViewCell
        
        cell.configure(recipe: recipe)
        
        return cell
    }
    
    
    
    
    
   
   
    
    
    
    
  
    
 
    
    
}
