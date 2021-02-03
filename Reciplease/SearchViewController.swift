import UIKit

class SearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundShapes()
    }
    

    @IBOutlet weak var fridgeLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var clearLabel: UIButton!
    @IBOutlet weak var listTextView: UITextView!
    @IBOutlet weak var searchButton: UIButton!
    
    
    
    private func roundShapes() {
        addButton.layer.cornerRadius = 10
        clearLabel.layer.cornerRadius = 10
        searchButton.layer.cornerRadius = 10
       
    }
    
    
    
 
}
