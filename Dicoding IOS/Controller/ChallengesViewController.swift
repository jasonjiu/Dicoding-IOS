import UIKit

class ChallengesViewController: UIViewController {

    @IBOutlet weak var arSV: UIStackView!
    @IBOutlet weak var guestBookSV: UIStackView!
    @IBOutlet weak var educationSV: UIStackView!
    @IBOutlet weak var flutterSV: UIStackView!
    @IBOutlet weak var webMasterSV: UIStackView!
    
    var challenges = [ ("Create Your AR Experience", "Lorem ipsum dolor sit amet", UIImage(named: "ar")),
    ("Digital Guest Book", "Lorem ipsum dolor sit amet", UIImage(named: "digital")),
    ("Expert Developer on Education Impact Applications", "Lorem ipsum dolor sit amet", UIImage(named: "expert")),
    ("Create Beautiful Apps Using  Flutter", "Lorem ipsum dolor sit amet", UIImage(named: "flutter")),
    ("Dicoding Web Master", "Lorem ipsum dolor sit amet", UIImage(named: "web")),
    ("Lorem ipsum dolor sit amet", "Lorem ipsum dolor sit amet", UIImage(named: "ar"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addTapped(param: &arSV)
        addTapped(param: &guestBookSV)
        addTapped(param: &educationSV)
        addTapped(param: &flutterSV)
        addTapped(param: &webMasterSV)
        
    }
    
    func addTapped( param : inout UIStackView){
        param.isUserInteractionEnabled = true
        param.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.objectTapped)))
        
    }
    
    @objc func objectTapped(gesture : UIGestureRecognizer){
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewControllerScene") as! DetailViewController
        
        switch gesture.view as! UIStackView {
        case arSV:
            controller.detail = challenges[0]
        case guestBookSV:
            controller.detail = challenges[1]
        case(educationSV) :
            controller.detail = challenges[2]
        case(flutterSV) :
            controller.detail = challenges[3]
        case(webMasterSV) :
            controller.detail = challenges[4]
        default:
            controller.detail = challenges[5]

        }
        
        self.navigationController?.pushViewController(controller, animated: true)

    }
    
    

}
