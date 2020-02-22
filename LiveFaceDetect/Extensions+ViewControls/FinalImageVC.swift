//  LiveFaceDetect
//
//  Created by Mohammed Azeem Azeez on 18/02/2020.
//  Copyright © 2020 Blue Mango Global. All rights reserved.
//


import UIKit

class FinalImageVC: UIViewController {

    @IBOutlet weak var capturedImage: UIImageView!
    var captureImaged: UIImage!
    var imageRect: CGRect!
    override func viewDidLoad() {
        super.viewDidLoad()
      // let finalImage = captureImaged?.crop(rect: imageRect)
      //
      capturedImage.image = captureImaged
     
    }
    

    @IBAction func closeTapped(_ sender: Any) {
        capturedImage.image = nil 
        dismiss(animated: true, completion: nil)
    }
    

}
extension UIImage {
    func crop( rect: CGRect) -> UIImage {
        var rect = rect
        rect.origin.x*=self.scale
        rect.origin.y*=self.scale
        rect.size.width*=self.scale
        rect.size.height*=self.scale

        let imageRef = self.cgImage!.cropping(to: rect)
        let image = UIImage(cgImage: imageRef!, scale: self.scale, orientation: self.imageOrientation)
        return image
    }
}
