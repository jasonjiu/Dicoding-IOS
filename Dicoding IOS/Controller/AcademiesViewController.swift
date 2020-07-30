import UIKit

class AcademiesViewController: UIViewController {
    @IBOutlet weak var androidSV: UIStackView!
    @IBOutlet weak var unitySV: UIStackView!
    @IBOutlet weak var cloudSV: UIStackView!
    @IBOutlet weak var arvrSV: UIStackView!
    
    var academies = [ ("Android Developer", "Lorem ipsum dolor sit amet", UIImage(named: "android")),
    ("Unity Game Developer", "Lorem ipsum dolor sit amet", UIImage(named: "unity")),
    ("AR / VR Developer", "Lorem ipsum dolor sit amet", UIImage(named: "arvr")),
    ("Cloud Developer", "Lorem ipsum dolor sit amet", UIImage(named: "cloud")),
    ("Lorem ipsum dolor sit amet", "Lorem ipsum dolor sit amet", UIImage(named: "android"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addTapped(param: &androidSV)
        addTapped(param: &unitySV)
        addTapped(param: &cloudSV)
        addTapped(param: &arvrSV)
        
    }
    
    func addTapped( param : inout UIStackView){
        param.isUserInteractionEnabled = true
        param.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.objectTapped)))
    }
    
    @objc func objectTapped(gesture : UIGestureRecognizer){
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewControllerScene") as! DetailViewController

        switch gesture.view as! UIStackView {
        case androidSV:
            controller.detail = academies[0]
        case unitySV:
            controller.detail = academies[1]
        case arvrSV:
            controller.detail = academies[2]
        case cloudSV:
            controller.detail = academies[3]
        default:
            controller.detail = academies[4]
        }
        
        self.present(controller, animated: true, completion: nil)
    }


}
