
import UIKit

enum CategoryType {
    case NaturalEnvironment, ArtificialEnvironment, NaturalInhabitant, ArtificialInhabitant, Contact
}

class Category {
    let CategoryName : String
    let Categorytype : CategoryType
    
    init(CategoryName: String, Categorytype: CategoryType ) {
        self.CategoryName = CategoryName
        self.Categorytype = Categorytype
    }
    
    func CategorytypeImage() -> UIImage? {
        switch self.Categorytype{
            
        case .NaturalEnvironment:
            return UIImage(named: "Natural Environment Logo.png")
        case .ArtificialEnvironment:
            return UIImage(named: "Artificial Environment Logo.png")
        case .NaturalInhabitant:
            return UIImage(named: "Natural Inhabitant Logo.png")
        case .ArtificialInhabitant:
            return UIImage(named: "Artificial Inhabitant Logo.png")
        case .Contact:
            return UIImage(named: "Contact Logo.png")
        }
    }
}
