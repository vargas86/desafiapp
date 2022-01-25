//
//  LabelMessageInput.swift
//  appDesafio
//
//  Created by MacBook on 23/01/22.
//

import Foundation
import UIKit

class LabelMessageOptionView : UIView{
    
    var labelMessage : UILabel?

    
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    var blue = UIColor(displayP3Red: 0.1, green: 0.1, blue: 0.4, alpha: 1)
    
    init(titleString : String, frame : CGRect){
        super.init(frame: frame)

        
        labelMessage = UILabel(frame: CGRect(x: 0, y: 0, width: frame.width, height: 50))
        labelMessage?.text = titleString
        labelMessage?.textAlignment = .left
        labelMessage?.font = UIFont(name: "Helvetica Bold", size: 20)
        labelMessage?.textColor = blue
        labelMessage?.backgroundColor = .white
        self.addSubview(labelMessage!)
    }
    


    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
