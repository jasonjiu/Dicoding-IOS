import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleDetail: UILabel!
    @IBOutlet weak var imgDetail: UIImageView!
    @IBOutlet weak var descDetail: UILabel!
    
    var detail : (title: String?, desc: String?, image: UIImage?)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleDetail.text = detail.title
        descDetail.text = detail.desc
        imgDetail.image = detail.image

    }
    

}
