import Foundation

class FormattedRecipeData {
    
    
    init(recipeLabel: String?, recipeImage: String?, recipeUrl: String?, shareAs: String?, totalTime: Int?, ingredientText: String?, ingredientWeight: Double?, ingredientImage: String?) {
        self.recipeLabel = recipeLabel
        self.recipeImage = recipeImage
        self.recipeUrl = recipeUrl
        self.shareAs = shareAs
        self.totalTime = totalTime
        self.ingredientText = ingredientText
        self.ingredientWeight = ingredientWeight
        self.ingredientImage = ingredientImage
    }
    
    
    let recipeLabel: String?
    let recipeImage: String?
    let recipeUrl: String?
    let shareAs: String?
    let totalTime: Int?
    
    let ingredientText: String?
    let ingredientWeight: Double?
    let ingredientImage: String?
}
