import Foundation


enum RecipeManagerError: Error {
    case failedToGetInformationForRecipe
    case failedToCreateURLForRecipe
}


class RecipeManager {
    
    private var networkManager: NetworkManagerProtocol
    private var urlComponents: URLComponentsProtocol
  
    
    init (
        networkManager: NetworkManagerProtocol = NetworkManager(),
        urlComponents: URLComponentsProtocol = URLComponents()
      
        
    ) {
        self.networkManager = networkManager
        self.urlComponents = urlComponents
    }
        
        
    
    
    func fetchRecipesFrom(ingredients: [String], completion: @escaping (Result<[Recipe], RecipeManagerError>) -> Void) {
        
        guard !ingredients.isEmpty else {
            completion(.failure(.failedToGetInformationForRecipe))
            return
        }
        
        guard let url = getRecipeURL(ingredients: ingredients) else {
            completion(.failure(.failedToCreateURLForRecipe))
            return
        }
        
        networkManager.fetch(url: url) { [weak self] (result: Result<RecipeResponce, NetworkManagerError>) in
            
            switch result {
            case .success(let response):
                guard let hits = response.hits else { return }
                
                let recipes = hits.compactMap { $0.recipe }
                
                completion(.success(recipes))
           
                
                
            case .failure:
                completion(.failure(.failedToGetInformationForRecipe))
            }
        
        }
        
    }
    
    private func getRecipeURL(ingredients: [String]) -> URL? {
        let ingredientsQuery = ingredients.reduce("") { (partialResult, iterationIngredient) -> String in
            return "\(partialResult),\(iterationIngredient)"
        }
        
        urlComponents.scheme = "http"
        urlComponents.host = "api.edamam.com"
        urlComponents.path = "/search"
        urlComponents.queryItems = [
            .init(name: "app_key", value: "5c4d98a59f5b71bcde59c924a828480d"),
            .init(name: "app_id", value: "34ec9103"),
            .init(name: "q", value: ingredientsQuery)
            
        ]
        
        return urlComponents.url
    }
    
}


protocol URLComponentsProtocol {
    var scheme: String? { get set }
    var host: String? { get set }
    var path: String { get set }
    var queryItems: [URLQueryItem]? { get set }
    var url: URL? { get }
}


extension URLComponents: URLComponentsProtocol { }
