//
//  ToolBar.swift
//  IBDemo
//
//  Created by Yi Zhang on 18/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

import Foundation
import UIKit

enum ToolBarType
{
    case normal
    case edit
}

class ToolBar: UIView
{
    class func toolBar(type: ToolBarType) -> ToolBar? {
        if type == .normal {
            return Bundle.main.loadNibNamed("ToolBar", owner: nil, options: nil)?[0] as! NormalToolBar
        } else if type == .edit {
            return Bundle.main.loadNibNamed("ToolBar", owner: nil, options: nil)?[1] as! EditToolBar
        } else {
            return nil
        }
    }
    
    func handleEvent() {
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        handleEvent()
    }
}

class NormalToolBar: ToolBar
{
    override func handleEvent() {
        backgroundColor = UIColor.red
    }
}

class EditToolBar: ToolBar
{
    override func handleEvent() {
        backgroundColor = UIColor.yellow
    }
}
