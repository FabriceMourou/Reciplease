import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var whatsInYourFridgeLabel: UILabel!
    @IBOutlet weak var fridgeIngredientTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var yourIngredientsLabel: UILabel!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var listTextView: UITextView!
    @IBOutlet weak var searchForRecipesButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundShapes()
        
        fridgeIngredientTextField.delegate = self
    }
    
    private func roundShapes() {
        addButton.layer.cornerRadius = 10
        clearButton.layer.cornerRadius = 10
        searchForRecipesButton.layer.cornerRadius = 10
        listTextView.layer.cornerRadius = 20
    }
    
    
    
    @IBAction func addIngredient(_ sender: Any) {
        listTextView.text = "- \(String(describing: fridgeIngredientTextField.text!))"
    }
}

extension SearchViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
