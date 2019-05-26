import Foundation

class Announcement {
    var title: String
    var price: Int
    var description: String
    
    init(_ title:String, _ price:Int, _ description:String){
        self.title = title
        self.price = price
        self.description = description
    }

    func printFullData() -> Void {
        print("Announcement:\n")
        print("Title: \(self.title)")
        print("Price: \(self.price)")
        print("Description: \(self.description)\n")
    }

}