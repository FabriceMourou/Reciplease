import UIKit

class FavoriteViewController: UIViewController {
    
    
 
    @IBOutlet weak var recipesTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        recipesTableView.delegate = self
        recipesTableView.dataSource = self

        
    }
    
    

}

extension FavoriteViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
    }
}

extension FavoriteViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell") as! RecipeTableViewCell
        

        
        return cell
    }
    
   
    func numberOfSections(in tableView: UITableView) -> Int {
        5
    }
    
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        25
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .none
        
        return view
    }
    
 
    
    
}
