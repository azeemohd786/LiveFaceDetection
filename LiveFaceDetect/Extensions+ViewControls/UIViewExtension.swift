//  LiveFaceDetect
//
//  Created by Mohammed Azeem Azeez on 18/02/2020.
//  Copyright © 2020 Blue Mango Global. All rights reserved.
//


import UIKit

extension UIView {
  @IBInspectable
  var cornerRadius: CGFloat {
    get {
      return layer.cornerRadius
    }
    
    set {
      layer.cornerRadius = newValue
    }
  }
}
