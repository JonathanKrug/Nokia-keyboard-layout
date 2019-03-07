//
//  NokiaButton.swift
//  Nokia
//
//  Created by Jonathan on 07.03.19.
//  Copyright © 2019 Jonathan. All rights reserved.
//

import UIKit

@IBDesignable
class NokiaButton: UIView {

    var view: UIView!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var lettersLabel: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadViewFromNib()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadViewFromNib()
    }
    
    func loadViewFromNib() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
        self.view = view
    }
    
    @IBInspectable var number: String = "" {
        didSet {
            self.numberLabel.text = number
        }
    }
    
    @IBInspectable var letters: String = "" {
        didSet {
            self.lettersLabel.text = letters
        }
    }

}
