/*
 import Foundation

class ArchiveSoundNE
{
    var title: String?
    var imagename: String?
    var audioname: String?
    
    init(title: String, imagename: String, audioname: String)
    {
       
        self.title = title
        self.imagename = imagename
        self.audioname = audioname
    }
    
    static func downloadAllArchiveSoundNE() -> [ArchiveSoundNE]
    {
        var archivesoundNEs = [ArchiveSoundNE]()
        
        let jsonFile = Bundle.main.path(forResource: "ArchiveSound", ofType: "json")
        let jsonData = NSData(contentsOfFile: jsonFile!)
        
        
        //turn data into foundation objects (ArchiveSoundNE)
        
        return archivesoundNEs

    }
    
    static func parseJSONFromData(jsonData: NSData?) -> [String : AnyObject]?
    {
        if let data = jsonData {
            do {
               // let jsonDictionary = try JSONSerialization.jsonObject(with: Data, options: JSONSerialization.ReadingOptions.mutableContainers) as? [String : AnyObject]
                
                let jsonDictionary = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions) as? [String : AnyObject]
               
                return jsonDictionary
                
            }catch let error as NSError {
                print("error processing json data: \(error.localizedDescription)")
            }
            
        }
        
        return nil
    }


}
 */

