import UIKit

class FridgeViewController: UIViewController {
    
    // MARK: - Internal
    
    // MARK: Properties - Internal
    
   
    
    // MARK: Methods - Internal
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundShapes()
        ingredientsTableView.delegate = self
        ingredientsTableView.dataSource = self

    }
    
    @IBAction func didTapOnAddButton(_ sender: Any) {
        guard
            let ingredientName = fridgeIngredientTextField.text else {
            
            return
        }

        ingredients.append(ingredientName)
        fridgeIngredientTextField.text = ""
    }
    
    
    @IBAction func clearListTextView(_ sender: Any) {
        ingredients.removeAll()
    }
    

    
    @IBAction func didTapSearchForRecipes() {
        displayRecipes(ingredient: fridgeIngredientTextField.text)
    
    }
    
    // MARK: - Private
    
    // MARK: Properties - Private
    
    @IBOutlet private weak var whatsInYourFridgeLabel: UILabel!
    @IBOutlet private weak var fridgeIngredientTextField: UITextField!
    @IBOutlet private weak var addButton: UIButton!
    
    @IBOutlet private weak var ingredientsTableView: UITableView!
    @IBOutlet private weak var yourIngredientsLabel: UILabel!
    @IBOutlet private weak var clearButton: UIButton!
    @IBOutlet private weak var searchForRecipesButton: UIButton!
    
    
    let alertManager = AlertManager()
    let recipeManager = RecipeManager()
    
    
    private func displayRecipes(ingredient: String?) {
        
        recipeManager.fetchRecipesFrom(ingredients: ingredients) { [weak self] (result) in
            
            DispatchQueue.main.async {
                switch result {
                
                case .failure:
                    guard let self = self else { return }
                    self.alertManager.presentAlert(from: self, message: "Failed to get recipe data")

                
                case .success(let recipes):
                   
                    self?.performSegue(withIdentifier: "GoToRecipesListSegue", sender: recipes)
                }
            }
            
        }
    }
   
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        
        if
            let recipesListViewController = segue.destination as? RecipesListViewController,
            let recipes = sender as? [Recipe]
            {
            recipesListViewController.recipes = recipes
            
        }
    }
    
    
    private func roundShapes() {
        addButton.layer.cornerRadius = 10
        clearButton.layer.cornerRadius = 10
        searchForRecipesButton.layer.cornerRadius = 10
        
    }
    
    var ingredients: [String] = [] {
        didSet {
            ingredientsTableView.reloadData()
        }
    }
    
}



extension FridgeViewController: UITableViewDelegate {
    
}

extension FridgeViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        ingredients.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ingredientCell") else {
            return UITableViewCell()
        }
        
        
        cell.textLabel?.text = ingredients[indexPath.row]
        
        return cell
        
    }
    
   
    
    
}





